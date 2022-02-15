proc get_int(a: VmArgs; i: Natural): int = int vm.get_int(a, i)

proc get_colors(a: VmArgs; i: Natural): Colors = Colors(vm.get_int(a, 1))

proc get_pnode(a: VmArgs, pos: int): PNode {.inline.} = a.get_node(pos)

proc get_vector3(a: VmArgs, pos: int): Vector3 =
  proc float_val(node: PNode, name: string): float =
    assert node.kind == nkExprColonExpr
    assert node.sons[0].sym.kind == skField
    assert node.sons[0].sym.name.s == name
    result = node.sons[1].float_val
  let
    fields = a.get_node(pos).sons
    x = float_val(fields[1], "x")
    y = float_val(fields[2], "y")
    z = float_val(fields[3], "z")
  result = vec3(x, y, z)

# adapted from https://github.com/h0lley/embeddedNimScript/blob/6101fb37d4bd3f947db86bac96f53b35d507736a/embeddedNims/enims.nim#L31
proc to_node(val: int): PNode = new_int_node(nkIntLit, val)
proc to_node(val: float): PNode = new_float_node(nkFloatLit, val)
proc to_node(val: string): PNode = new_str_node(nkStrLit, val)
proc to_node(a: bool): Pnode = new_int_node(nkIntLit, a.BiggestInt)
proc to_node(val: enum): PNode = val.ord.to_node

proc to_node(list: open_array[int|float|string|bool|enum]): PNode =
  result = nkBracket.new_node
  result.sons.initialize(list.len)
  for i in 0..list.high: result.sons[i] = list[i].to_node()

proc to_node(tree: tuple|object): PNode =
  result = nkPar.new_tree
  for field in tree.fields:
    result.sons.add(field.to_node)

proc to_node(a: PNode): PNode = a

proc to_node(tree: ref tuple|ref object): PNode =
  result = nkPar.new_tree
  if tree.is_nil: return result
  for field in tree.fields:
    result.sons.add(field.to_node)

proc to_result(val: float): BiggestFloat = BiggestFloat(val)
proc to_result(val: SomeOrdinal or enum or bool): BiggestInt = BiggestInt(val)
proc to_result(val: Vector3 or string): PNode = val.to_node

macro bind_procs(self: ScriptController, module_name: string, proc_refs: varargs[untyped]): untyped =
  result = new_stmt_list()
  result.add quote do:
    when not declared(script_controller):
      let script_controller {.inject.} = `self`

  for proc_ref in proc_refs:
    let
      symbol = bind_sym($proc_ref)
      proc_impl = (if symbol.kind == nnkSym: symbol else: symbol[0]).get_impl
      proc_name = proc_impl[0].str_val
      return_node = proc_impl[3][0]
      arg_nodes = proc_impl[3][1..^1]

    let args = collect:
      var pos = -1
      for ident_def in arg_nodes:
        let typ = ident_def[1].str_val
        if typ == $ScriptController.type:
          ident"script_controller"
        elif typ == "VmArgs":
          ident"a"
        elif typ == "ScriptCtx":
          quote do: script_controller.active_unit.script_ctx
        elif typ in ["Unit", "Bot", "Build"]:
          let getter = "get_" & typ
          pos.inc
          new_call(bind_sym(getter), ident"script_controller", ident"a", new_lit(pos))
        else:
          let getter = "get_" & typ
          pos.inc
          new_call(bind_sym(getter), ident"a", new_lit(pos))

    var call = new_call(proc_ref, args)
    if return_node.kind == nnkSym:
      if return_node.str_val in ["Unit", "Bot", "Build"]:
        call = new_call(bind_sym"set_result", ident"a", new_call(bind_sym"to_node", ident"script_controller", call))
      else:
        call = new_call(bind_sym"set_result", ident"a", new_call(bind_sym"to_result", call))

    result.add quote do:
      mixin implement_routine
      `self`.interpreter.implement_routine "*", `module_name`, `proc_name`, proc(a {.inject.}: VmArgs) {.gcsafe.} =
        `call`
