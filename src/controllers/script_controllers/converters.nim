proc get_int(a: VmArgs; i: Natural): int = int vm.get_int(a, i)

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
proc to_node(val: bool): PNode = val.ord.to_node
proc to_node(val: enum): PNode = val.ord.to_node

proc to_node(list: open_array[int|float|string|bool|enum]): PNode =
  result = nkBracket.new_node
  result.sons.initialize(list.len)
  for i in 0..list.high: result.sons[i] = list[i].to_node()

proc to_node(tree: tuple|object): PNode =
  result = nkPar.new_tree
  for field in tree.fields:
    result.sons.add(field.to_node)

proc to_node(tree: ref tuple|ref object): PNode =
  result = nkPar.new_tree
  if tree.is_nil: return result
  for field in tree.fields:
    result.sons.add(field.to_node)
