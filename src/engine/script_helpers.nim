import std/monotimes
import ".." / [core, engine/engine]

const ADVANCE_STEP = 0.5.seconds

proc start_advance_timer*(self: auto) =
  self.advance_timer = get_mono_time() + ADVANCE_STEP

proc advance*(self: auto, delta: float64) =
  let now = get_mono_time()
  if self.callback == nil or not self.callback(delta):
    self.advance_timer = MonoTime.high
    discard self.engine.call_proc("set_action_running", self.engine.module_name, false)
    self.update_running_state self.engine.resume()
  elif now >= self.advance_timer:
    self.advance_timer = now + ADVANCE_STEP
    self.saved_callback = self.callback
    self.callback = nil
    discard self.engine.resume()
