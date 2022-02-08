import std / [monotimes, os, hashes, sets, strutils, sugar, math]
import pkg / godot except print
import pkg / print
import godotapi / [node]
import core, engine/engine, models, globals

export engine

let state = GameState.active
let config = state.config


#retry_failures* = false

#proc load_script*(self: Unit, script = "")
#proc create_new(self: Unit): bool

proc destroy*(ctx: ScriptCtx) =
  if ctx.engine in ctxs:
    ctxs.del(ctx.engine)

# proc is_script_loadable*(self: Unit): bool =
#   let ctx = self.script_ctx
#   ctx.script != "none" and ctx.script.file_exists

proc error*(self: Unit, ex: ref VMQuit) =
  var ctx = self.script_ctx
  ctx.engine.running = false
  when defined(enu_simulate):
    raise ex
  else:
    let (root, _) = self.find_root(true)
    ctx = root.script_ctx
    if ctx.retry_on_nil and ("attempt to access a nil address" in ex.msg):
      root.code.touch root.code.value

    else:
      state.err "Exception executing " & self.script_ctx.script
      state.err ex.msg
      state.console.show_errors.value = true

proc retry_failed_scripts* =
  var prev_failed = failed
  failed = @[]
  for f in prev_failed:
    echo "retrying: ", f.unit.script_ctx.script
    f.unit.load_script()
  if failed.len > 0 and prev_failed.len == failed.len:
    prev_failed = failed
    for f in prev_failed:
      f.unit.error(f.ex)

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
    self.error(e)

proc begin_move(self: Unit, direction: Vector3, steps: float, move_mode: int): bool =
  self.load_vars()
  var steps = steps
  var direction = direction
  if steps < 0:
    steps = steps * -1
    direction = direction * -1
  active_engine().callback = self.on_begin_move(direction, steps, move_mode)
  result = not active_engine().callback.is_nil

proc begin_turn(self: Unit, direction: Vector3, degrees: float, move_mode: int): bool =
  self.load_vars()
  var degrees = degrees
  var direction = direction
  if degrees < 0:
    degrees = degrees * -1
    direction = direction * -1
  active_engine().callback = self.on_begin_turn(direction, degrees, move_mode)
  result = not active_engine().callback.is_nil


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
