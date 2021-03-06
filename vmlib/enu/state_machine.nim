import macros, strformat, strutils, helpers, sequtils, tables

type
  Context* = ref object
    stack: seq[Frame]
  Frame = ref object
    manager: proc(active: bool):bool
    action: proc()
  Halt = object of CatchableError
  Loop = ref object
    states: Table[string, NimNode]
    from_states: seq[(string, NimNode)]

proc current_loop(value: Loop = nil): Loop =
  var loop {.global.}: Loop
  if not value.is_nil:
    loop = value
  result = loop

proc parse(sig: NimNode): (string, string) =
  var
    name = ""
    args: seq[string]
  if sig.kind == nnkIdent:
    name = $sig
  else:
    name = $sig[0]
    for i, arg in sig[1..^1]:
      case arg.kind
      of nnkExprColonExpr:
        args.add &"{arg[0]}: {arg[1]}"
      of nnkExprEqExpr:
        args.add &"{arg[0]} = {arg[1].to_str_lit}"
      of nnkIdent:
        args.add &"{arg}: auto"
      else:
        error "invalid signature", sig
    if args.len > 0:
      args.add "" # to get a trailing comma before the context arg
  return (name, args.join(", "))

macro def*(sig: untyped,  body: untyped): untyped =
  let
    (name, args) = sig.parse
    code = &"""
      proc {name}({args} ctx: Context = nil) =
        const this_state = "{name}"
    """
  result = parse_stmt(code)
  result[0].find_child(it.kind == nnkStmtList).add(body)

proc advance*(ctx: Context, frame: Frame = nil): bool =
  ## advance state machine. Returns true if statemachine is still running.
  ## It's ok to run this from within the statemachine, but Halt exceptions
  ## must be allowed to propagate.
  let
    stack = ctx.stack
  for i, stack_frame in stack:
    let active = i + 1 == stack.len
    try:
      discard stack_frame.manager(active)
    except Halt:
      # shrink the stack to the current position
      ctx.stack = ctx.stack[0..i]
      if stack_frame.action == nil and stack_frame == ctx.stack[^1]:
        discard ctx.stack.pop()
      if frame != stack_frame:
        raise (ref Halt)()
      else:
        break
  result = frame.is_nil or frame.action != nil

macro validate_loop() =
  let state_list = @["any", "others"] & to_seq current_loop().states.keys
  for (state, node) in current_loop().from_states:
    if state notin @["nil"] & state_list:
      let states = (@["nil"] & state_list.deduplicate).join(", ")
      let msg = &"undeclared state {state}. valid: {states}"

      error msg, node

template loop_body(body: untyped, watcher: untyped) =
  var
    main_loop = false
    current_state {.inject, used.} = "nil"
    done {.inject.} = true
    frame {.inject.} = Frame()

  when not declared(ctx):
    var ctx {.inject.}: Context
  else:
    var ctx {.inject.} = ctx
  if ctx.is_nil:
    ctx = Context()
    main_loop = true

  proc manager(active: bool): bool =
    let active {.inject, used.} = active
    watcher
    if active and done:
      while true:
        body
        return true
    else:
      return false
  validate_loop()
  frame.manager = manager
  ctx.stack.add frame

  when declared(loop_started):
    loop_started(ctx, main_loop)

  when declared(loop_ended):
    defer:
      loop_ended(ctx, main_loop)

  var looping = ctx.advance(frame)
  if main_loop and not looping:
    # regular while loop.
    while manager(true):
      discard
  else:
    while looping:
      done = false
      try:
        frame.action()
      except Halt:
        if frame in ctx.stack:
          # we're in the stack (which has already been shrunk)
          # so we don't have to bubble the halt
          continue
        else:
          if main_loop:
            break
          else:
            # bubble the halt
            raise (ref Halt)()
      done = true
      looping = ctx.advance(frame)

macro loop*(body: untyped, watcher: untyped = nil) =
  discard current_loop(Loop())
  result = new_stmt_list()
  let body = if body.kind == nnkNilLit: new_stmt_list() else: body
  let watcher = if watcher.kind == nnkNilLit: new_stmt_list() else: watcher
  result.add(get_ast loop_body(body, watcher))
  result = new_block_stmt(result)

macro `->`*(from_state: untyped, to_state: untyped, body: untyped = nil) =
  template transition(from_includes_raw, from_excludes_raw: untyped, to_state_name: string, from_state, to_state, body: untyped) =
    when not declared(current_state) or not declared(ctx):
      {.error: "`->` must be inside a `loop` ".}
    let
      from_includes: seq[string] = from_includes_raw.split(",")
      from_excludes: seq[string] = from_excludes_raw.split(",")
    if (current_state in from_includes or
        (current_state != "nil" and
        (("others" in from_includes and to_state_name != current_state) or
        "any" in from_includes))) and current_state notin from_excludes:
      current_state = to_state_name
      body
      proc action() =
        to_state
      if to_state_name != "nil":
        frame.action = action
      else:
        frame.action = nil
      raise (ref Halt)()

  var
    to_state_name: string
    to_state = to_state
    includes: seq[string]
    excludes: seq[string]
    body = body

  proc register(node: NimNode): string =
    result = node.str_val
    current_loop().from_states.add (result, node.copy_nim_node)

  if body.kind == nnkNilLit:
    body = new_stmt_list()
  if from_state.kind == nnkPar:
    for node in from_state:
      if node.kind == nnkIdent:
        includes.add(node.register)
      elif node.kind == nnkPrefix and node[0].str_val == "-":
        excludes.add(register(node[1]))
      elif node.kind == nnkPrefix and node[0].str_val == "+":
        includes.add(register(node[1]))
      elif node.kind == nnkNilLit:
        includes.add("nil")
      else:
        error "Invalid from state", node
  elif from_state.kind == nnkIdent:
    includes.add register(from_state)
  elif from_state.kind == nnkNilLit:
    includes.add("nil")
  else:
    error "Invalid from state", from_state

  if to_state.kind != nnkNilLit:
    let ctx_arg = new_nim_node(nnkExprEqExpr)
    ctx_arg.add(ident"ctx")
    ctx_arg.add(ident"ctx")
    if to_state.kind == nnkInfix and to_state[0] == ident"as" and to_state[2].kind == nnkIdent:
      to_state_name = $to_state[2]
      if to_state[1].kind == nnkIdent:
        let search_name = $to_state[1]
        if search_name in current_loop().states and not current_loop().states[search_name].is_nil:
          to_state = current_loop().states[search_name]
        else:
          to_state = new_call(to_state[1], ctx_arg)
      elif to_state[1].kind == nnkCall:
        to_state = to_state[1]
        to_state.add(ctx_arg)
      current_loop().states[to_state_name] = copy_nim_tree to_state
    elif to_state.kind == nnkIdent:
      to_state_name = $to_state
      if to_state_name in current_loop().states and not current_loop().states[to_state_name].is_nil:
        to_state = current_loop().states[to_state_name]
      else:
        to_state = new_call(to_state, ctx_arg) #
    elif to_state.kind == nnkCall:
      to_state_name = $to_state[0]
      to_state.add(ctx_arg)
    else:
      error "to_state must be identifier or call", to_state

  else:
    to_state_name = "nil"
    to_state = new_stmt_list()

  if to_state_name != "nil" and to_state_name notin current_loop().states:
    current_loop().states[to_state_name] = nil
  # passing these as seqs sometimes crashes
  # the VM when running in nimscript. Join into a string
  let
    includes_str = includes.join(",")
    excludes_str = excludes.join(",")
  result = get_ast transition(includes_str, excludes_str, to_state_name, from_state, to_state, body)

when is_main_module:
  def task1:
    echo "task1"
  def task2:
    echo "task2"

  var
    count1 = 0
    count2 = 0
  loop:
    inc count1
    echo "count1: " & $count1 & " count2: " & $count2
    nil -> task1
    if count1 > 5:
      task1 -> task2:
        echo "finished in main"
  do:
    inc count2
    echo "count1: " & $count1 & " count2: " & $count2
    if count2 > 10:
      echo "true true"
      task2 -> nil
    else:
      echo "smaller"

  proc forward(length = 1) =
    echo "forward ", length
  proc turn_right() =
    discard

  def square(length):
    4.times:
      forward length
      turn_right()

  var counter = 0
  loop:
    inc counter
    echo "loop ", counter
    if counter == 10:
      break

  counter = 0
  loop:
    (nil, big_square) -> square(counter) as little_square
    little_square -> square(2) as big_square
  do:
    inc counter
    if counter > 100:
      (little_square, big_square) -> nil

  def action_a(name: string):
    echo "action_a ", name

  def action_b(name: string):
    echo "action_b ", name

  def action_c(name: string):
    echo "action_c ", name

  def action_d(name: string):
    echo "action_d ", name

  def action_e(name: string):
    echo "action_e ", name

  def loop_b:
    var
      counter = 0
      name = "loop_b"
    defer:
      echo "loop b done!"
    loop nil:
      inc counter
      nil -> action_d(name)
      if counter == 5:
        action_d -> action_e(name)
      if counter == 10:
        action_e -> action_d(name)
      if counter == 15:
        counter = 0

  def loop_a:
    var
      counter = 0
      name = "loop_a"
    loop nil:
      nil -> action_b(name)
      inc counter
      if counter == 2:
        action_b -> loop_b:
          counter = -20
        loop_b -> action_c(name)
      if counter == 6:
        action_c -> nil
    echo name, " done ", counter

  counter = 0
  loop:
    echo "looping"
    inc counter
    if counter == 6:
      break

  counter = 0
  var name = "loop_main"
  loop nil:
    nil -> loop_a as initial_loop:
      echo "initial loop "
    inc counter
    if done:
      initial_loop -> action_a(name):
        counter = 0
    if counter == 3:
      action_a -> action_b(name):
        counter = 0
      action_b -> action_c(name) as ac:
        counter = 0
      ac -> loop_a:
        counter = 0
    if counter == 70:
      loop_a -> nil:
        echo "loop_main done ", counter

  loop:
    any -> nil
    nil -> action_a("hello")
