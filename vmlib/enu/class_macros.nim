import std / [macros, strformat, strutils, sugar, sequtils, genasts]
import types, base_api

proc params_to_assignments(target: NimNode, nodes: seq[NimNode]): NimNode =
  result = new_stmt_list()
  for node in nodes:
    let prop = node[0]
    let value = node[1]
    result.add quote do:
      `target`.`prop` = `value`

proc params_to_ident_defs(nodes: seq[NimNode]): seq[NimNode] =
  for node in nodes:
    let node = node.copy_nim_tree
    let prop = node[0]
    if prop.str_val notin ["global", "speed", "color"]:
      if node.kind == nnkExprEqExpr:
        result.add nnkIdentDefs.new_tree(node[0], new_empty_node(), node[1])
      elif node.kind == nnkExprColonExpr:
        result.add nnkIdentDefs.new_tree(node[0], node[1], new_empty_node())
      else:
        error("expected `my_param = 1`, `my_param: int` kind: " & $node.kind, node)

proc params_to_properties(nodes: seq[NimNode]): NimNode =
  result = new_nim_node(kind = nnkRecList)
  let empty = new_empty_node()
  for node in nodes:
    let node = node.copy_nim_tree
    let prop = node[0]
    if prop.str_val notin ["global", "speed", "color"]:
      if node.kind == nnkExprEqExpr:
        result.add nnkIdentDefs.new_tree(node[0].postfix("*"), new_call(ident"type", node[1]), empty)
      elif node.kind == nnkExprColonExpr:
        result.add nnkIdentDefs.new_tree(node[0].postfix("*"), node[1], empty)
      else:
        error("expected `my_param = 1`, `my_param: int` kind: " & $node.kind, node)

proc build_ctors(name_str: string, type_name: NimNode, params: seq[NimNode]): NimNode =
  var ctor_body = quote do:
    result = `type_name`()
    new_instance(instance, result)

  for param in params:
    let prop = param[0]
    ctor_body.add quote do:
      result.`prop` = `prop`

  let vars = params_to_ident_defs(params)
  let var_names = vars.map_it $it[0]
  let instance_def = new_ident_defs("instance".ident, type_name)
  var params = @[type_name] & instance_def & vars

  var global = "global".ident
  if "global" notin var_names:
    params &= new_ident_defs(global, new_empty_node(), ident("global_default"))
  ctor_body.add quote do:
    result.global = `global`

  var speed = "speed".ident
  if "speed" notin var_names:
    params &= new_ident_defs(speed, new_empty_node(), new_float_lit_node(1.0))
  ctor_body.add quote do:
    result.speed = `speed`

  var color = "color".ident
  if "color" notin var_names:
    params &= new_ident_defs(color, new_empty_node(), bind_sym"eraser")
  ctor_body.add quote do:
    result.color = `color`

  # add baked in constructor params for speed, color, etc.
  # probably shouldn't be here.
  result = new_proc(
    name = "new".ident.postfix("*"),
    params = params,
    pragmas = nnkPragma.new_tree("discardable".ident),
    body = ctor_body
  )

proc extract_class_info(name_node: NimNode): tuple[name: string, params: seq[NimNode]] =
  result = if name_node.kind == nnkIdent:
      (name_node.str_val, @[])
    elif name_node.kind in [nnkCall, nnkCommand]:
      name_node[0].expect_kind nnkIdent
      (name_node[0].str_val, name_node[1..^1])
    else:
      error("expected `name my_name` or `name my_name(my_param1 = 1, my_param2 = 2, ...)`", name_node)
      return

proc build_class(name_node: NimNode): NimNode =
  let base_class = ident"ScriptNode"
  let (name, params) = extract_class_info(name_node)

  let
    type_name = (name & "Type").to_upper_ascii.nim_ident_normalize.ident
    var_name = name.ident
    ctors = build_ctors(name, type_name, params)
    controller_type = (name & "Controller").to_upper_ascii.nim_ident_normalize.ident

  result = new_stmt_list()

  let name_str = name
  var type_def = quote do:
    type `type_name`* = ref object of `base_class`

  type_def[0][2][0][2] = params_to_properties(params)
  result.add quote do:
    `type_def`

    let me {.inject.} = `type_name`(name: `name_str`)
    register_active(me)
    let `var_name`* {.inject.} = me
    `ctors`

proc pop_name_node(ast: NimNode): NimNode =
  let ident_name = "name"
  for i, node in ast:
    if node.kind in [nnkCommand, nnkCall]:
      if node.len == 2 and node[1].kind in [nnkIdent, nnkCall] and node[0].eq_ident(ident_name):
        result = node[1]
        ast.del(i)
        break

macro load_enu_script*(file_name, include_name: string): untyped =
  let file_name = file_name.str_val
  let ast = parse_stmt(file_name.static_read, file_name)
  let name_node = pop_name_node(ast)
  let (name, params) = extract_class_info(name_node)
  let include_file = quote do:
    include `include_name`
  result = new_stmt_list()
  var inner = new_stmt_list()
  if name_node.kind != nnkNilLit:
    result.add build_class(name_node)
    result.add include_file
    inner.add params_to_assignments(ident"me", params)

  else:
    result.add quote do:
      let me {.inject.} = ScriptNode(ctrl: Controller())

    result.add include_file

  inner.add ast
  result.add quote do:
    proc run_script*(me {.inject.}: me.type) =
      var target {.inject.}: ScriptNode = me
      `inner`
    run_script(me)

  system.echo "code: "
  system.echo result.repr
