import std / [monotimes, os, hashes, sets, strutils, math, sugar]
import pkg / [godot]
import godotapi / [node]
import core, engine/engine, models

export engine

let state = GameState.active
let config = state.config

var
  module_names: HashSet[string]
  current_active_unit: Unit
  failed: seq[tuple[ctx: ScriptCtx, ex: ref VMQuit]]
  starting = true
  modules_to_load: HashSet[ScriptCtx]

proc destroy*(ctx: ScriptCtx) =
  if ctx.engine in ctxs:
    ctxs.del(ctx.engine)

proc init*(_: type ScriptCtx): ScriptCtx =
  let e = Engine.init()
  result = ScriptCtx(engine: e, timer: MonoTime.high)
  ctxs[e] = result
  modules_to_load.incl result

proc active_unit*(): Unit = current_active_unit

proc is_script_loadable*(self: Unit): bool =
  let ctx = self.script_ctx
  ctx.script != "none" and ctx.script.file_exists

proc update_running_state(self: Unit, running: bool) =
  self.script_ctx.engine.running = running
  if not running:
    # TODO
    # self.holes = self.kept_holes
    # self.kept_holes.clear()
    # self.save_blocks()
    # self.load_vars()
    state.debug(self.script_ctx.script & " done.")

proc advance*(self: Unit, delta: float64) =
  let now = get_mono_time()
  current_active_unit = self
  let c = self.script_ctx
  let e = c.engine

  if self of Build:
    let self = Build(self)
    self.voxels_remaining_this_frame += self.voxels_per_frame
  var resume_script = true
  while resume_script and not state.paused:
    resume_script = false
    if e.callback == nil or (not e.callback(delta)):
      c.timer = MonoTime.high
      discard e.call_proc("set_action_running", e.module_name, false)
      self.update_running_state e.resume()
      if self of Build:
        let self = Build(self)
        if self.voxels_per_frame > 0 and e.running and self.voxels_remaining_this_frame >= 1:
          resume_script = true
    elif now >= c.timer:
      c.timer = now + ADVANCE_STEP
      e.saved_callback = e.callback
      e.callback = nil
      discard e.resume()

proc load_vars(self: Unit) =
  let old_speed = self.speed
  let ctx = self.script_ctx
  self.speed = ctx.engine.get_float("speed", ctx.engine.module_name)

  if self of Build:
    let self = Build(self)
    var old_speed = self.speed
    let
      e = ctx.engine
      scale_factor = ctx.engine.get_float("scale", e.module_name).round(3)
    self.moving = ctx.engine.get_bool("move_mode", e.module_name)
    self.color = action_colors[Colors(ctx.engine.get_int("color", e.module_name))]
    self.drawing = ctx.engine.get_bool("drawing", e.module_name)
    self.voxels_per_frame = if self.speed == 0:
      float.high
    else:
      self.speed
    if self.speed != old_speed:
      self.voxels_remaining_this_frame = 0
    if scale_factor != self.scale.round(3):
      self.scale = scale_factor
    self.energy.value = ctx.engine.get_float("energy", e.module_name).round(3)

    self.set_vars()

proc begin_move(self: Unit, direction: Vector3, steps: float): bool =
  self.load_vars()
  var steps = steps
  var direction = direction
  if steps < 0:
    steps = steps * -1
    direction = direction * -1
  active_engine().callback = self.on_begin_move(direction, steps)
  result = not active_engine().callback.is_nil

proc begin_turn(self: Unit, direction: Vector3, degrees: float): bool =
  self.load_vars()
  var degrees = degrees
  var direction = direction
  if degrees < 0:
    degrees = degrees * -1
    direction = direction * -1
  active_engine().callback = self.on_begin_turn(direction, degrees)
  result = not active_engine().callback.is_nil

proc error*(e: Engine, ex: ref VMQuit) =
  e.running = false
  when defined(enu_simulate):
    raise ex
  else:
    state.err ex.msg
    # TODO
    # trigger("script_error")

proc retry_failed_scripts =
  # We don't know what order scripts will load in.
  # Once all scripts have been loaded, retry the
  # failures. Keep retrying until the list of failures
  # stops changing, then print any remaining errors.
  starting = false
  var cycling = true
  while cycling:
    let prev_failed = failed
    failed = @[]
    for f in prev_failed:
      f.ctx.reload_script()
    if prev_failed == failed:
      cycling = false

      for f in failed:
        f.ctx.engine.error(f.ex)
      failed = @[]

proc create_new(self: Unit): bool =
  let unit = active_unit()
  # TODO: Fix this
  let ae = active_engine()
  let clone = self.clone(unit, active_ctx())
  let new_engine = clone.script_ctx.engine
  ae.callback = proc(delta: float): bool =
    not new_engine.initialized
  set_active(ae)
  result = true

proc load_script*(self: Unit, script = "", retry_failed = true) =
  let ctx = self.script_ctx
  modules_to_load.excl ctx
  defer:
    if modules_to_load.card == 0 and retry_failed:
      retry_failed_scripts()

  if script != "":
    ctx.script = script
  ctx.reload_script = proc() =
    self.load_script(retry_failed = false)
  ctx.engine.callback = nil
  try:
    if not self.is_script_loadable:
      return
    if not state.paused:
      let module_name = ctx.script.split_file.name
      var others = module_names
      if not ctx.is_clone:
        module_names.incl module_name
        others.excl module_name
      let imports = if others.card > 0:
        "import " & others.to_seq.join(", ")
      else:
        ""
      let code = self.code_template(imports)

      let initialized = ctx.engine.initialized
      let suffex = if ctx.is_clone: "_clone" & self.id else: ""
      ctx.load_vars = proc() = self.load_vars()
      ctx.engine.load(config.script_dir, ctx.script, code, config.lib_dir, suffex)
      if not initialized:
        with ctx.engine:
          expose "yield_script", proc(a: VmArgs):bool =
            active_engine().callback = active_engine().saved_callback
            active_engine().saved_callback = nil
            true

          expose "begin_move", a => self.begin_move(get_vec3(a, 0), get_float(a, 1))
          expose "begin_turn", a => self.begin_turn(get_vec3(a, 0), get_float(a, 1))
          # TODO
          # expose "echo_console", a => echo_console(get_string(a, 0))
          expose "create_new", a => self.create_new()
          expose "sleep", proc(a: VmArgs): bool =
            self.load_vars()
            let seconds = get_float(a, 0)
            var duration = 0.0
            active_engine().callback = proc(delta: float): bool =
              duration += delta
              return duration < seconds
            true
          expose "quit", proc(a: VmArgs): bool =
            let e = active_engine()
            e.exit_code = some(a.get_int(0).int)
            e.pause()
            e.running = false
            result = false
        self.on_script_loaded()
    if not state.paused:
      current_active_unit = self
      self.update_running_state ctx.engine.run()
  except VMQuit as e:
    if starting:
      failed.add (ctx, e)
    else:
      self.script_ctx.engine.error(e)
