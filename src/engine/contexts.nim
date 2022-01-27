import std / [monotimes, os, hashes, sets, strutils, sugar, math]
import pkg / [godot]
import godotapi / [node]
import core, engine/engine, models, globals

export engine

let state = GameState.active
let config = state.config

var
  module_names: HashSet[string]
  failed: seq[tuple[unit: Unit, ex: ref VMQuit]]
  retry_failures* = false

proc load_script*(self: Unit, script = "")
proc create_new(self: Unit): bool

proc destroy*(ctx: ScriptCtx) =
  if ctx.engine in ctxs:
    ctxs.del(ctx.engine)

proc init*(_: type ScriptCtx): ScriptCtx =
  let e = Engine.init()
  result = ScriptCtx(engine: e, timer: MonoTime.high)
  ctxs[e] = result

proc is_script_loadable*(self: Unit): bool =
  let ctx = self.script_ctx
  ctx.script != "none" and ctx.script.file_exists

proc error*(ctx: ScriptCtx, ex: ref VMQuit) =
  ctx.engine.running = false
  when defined(enu_simulate):
    raise ex
  else:
    state.err "Exception executing " & ctx.script
    state.err ex.msg
    trigger("script_error")

proc retry_failed_scripts* =
  var prev_failed = failed
  failed = @[]
  for f in prev_failed:
    echo "retrying: ", f.unit.script_ctx.script
    f.unit.load_script()
  if failed.len > 0 and prev_failed.len == failed.len:
    for f in failed:
      f.unit.script_ctx.error(f.ex)

proc update_running_state(self: Unit, running: bool) =
  self.script_ctx.engine.running = running
  if not running:
    self.load_vars()
    state.debug(self.script_ctx.script & " done.")

proc remove_module*(file_name: string) =
  module_names.excl file_name.split_file.name

proc advance*(self: Unit, delta: float64) =
  let now = get_mono_time()
  let c = self.script_ctx
  let e = c.engine

  if self of Build:
    let self = Build(self)
    self.voxels_remaining_this_frame += self.voxels_per_frame
  var resume_script = true
  try:
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
  except VMQuit as e:
    self.script_ctx.error(e)

proc begin_move(self: Unit, direction: Vector3, steps: float, moving: bool): bool =
  echo "begin move"
  self.load_vars()
  var steps = steps
  var direction = direction
  if steps < 0:
    steps = steps * -1
    direction = direction * -1
  active_engine().callback = self.on_begin_move(direction, steps, moving)
  result = not active_engine().callback.is_nil

proc begin_turn(self: Unit, direction: Vector3, degrees: float, moving: bool): bool =
  self.load_vars()
  var degrees = degrees
  var direction = direction
  if degrees < 0:
    degrees = degrees * -1
    direction = direction * -1
  active_engine().callback = self.on_begin_turn(direction, degrees, moving)
  result = not active_engine().callback.is_nil

proc load_script*(self: Unit, script = "") =
  let ctx = self.script_ctx

  if script != "":
    ctx.script = script
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

          expose "begin_move", a => self.begin_move(get_vec3(a, 0), get_float(a, 1), get_bool(a, 2))
          expose "begin_turn", a => self.begin_turn(get_vec3(a, 0), get_float(a, 1), get_bool(a, 2))
          expose "echo_console", a => echo_console(get_string(a, 0))
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
          expose "set_global", proc(a: VmArgs): bool =
            let global = a.get_bool(0)
            if global:
              self.flags += Global
            else:
              self.flags -= Global
            false
          expose "get_global", proc(a: VmArgs): bool =
            a.set_result((Global in self.flags).to_node)
            false
          expose "get_position", proc(a: VmArgs): bool =
            let n = self.to_global(self.transform.origin).to_node
            a.set_result(n)
            return false
          expose "set_position", proc(a: VmArgs): bool =
            let v = a.get_vec3(0)
            self.transform.origin = v
            false
          expose "get_rotation", proc(a: VmArgs): bool =
            let r = self.transform.basis.get_euler
            a.set_result(vec3(r.x.rad_to_deg, r.y.rad_to_deg, r.z.rad_to_deg).to_node)
            return false
        self.on_script_loaded()
    if not state.paused:
      self.update_running_state ctx.engine.run()

  except VMQuit as e:
    if retry_failures:
      self.script_ctx.engine.running = false
      failed.add (self, e)
    else:
      self.script_ctx.error(e)

proc create_new(self: Unit): bool =
  let unit = active_unit()
  let ae = active_engine()
  let clone = self.clone(unit, active_ctx())
  clone.script_ctx = ScriptCtx.init
  clone.script_ctx.is_clone = true
  clone.script_ctx.script = self.script_file
  let new_engine = clone.script_ctx.engine
  unit_ctxs[new_engine] = clone

  ae.callback = proc(delta: float): bool =
    if not new_engine.initialized:
      clone.code.value = clone.script_file.read_file
      true
    else:
      false

  set_active(ae)
  unit.units.add(clone)
  result = true
