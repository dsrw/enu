import state_machine

var
  context: Context
  action_running = true

proc yield_script = discard

proc advance_state_machine(): bool =
  if not context.is_nil:
    result = context.advance()

proc set_action_running*(running: bool) =
  action_running = running

template wait(body: untyped) =
  action_running = true
  when defined(nimscript):
    body
    while action_running and advance_state_machine():
      yield_script()
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
