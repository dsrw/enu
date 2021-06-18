import state_machine, types

var
  context: Context

proc yield_script = discard

proc advance_state_machine(): bool =
  result = if not context.is_nil:
    context.advance()
  else:
    true

proc set_action_running*(running: bool) =
  self.ctrl.action_running = running

template wait(node: ScriptNode, body: untyped) =
  node.ctrl.action_running = true
  when defined(nimscript):
    body
    while node.ctrl.action_running and node.ctrl.advance_state_machine():
      node.ctrl.yield_script()
  else:
    # only for tests
    var counter = 0
    while counter < 3 and advance_state_machine():
      inc counter
      body

proc loop_started(ctx: Context, main_loop: bool) =
  if main_loop:
    context = ctx

proc loop_ended(ctx: Context, main_loop: bool) =
  if main_loop:
    context = nil
