import std / [macros, strformat, strutils, sugar, sequtils, genasts]
import types

proc params_to_vars(nodes: seq[NimNode]): NimNode =
  result = new_stmt_list()
  let empty = new_empty_node()
  var vars = nnkVarSection.new_nim_node
  var assign = new_stmt_list()
  for node in nodes:
    let node = node.copy_nim_tree
    let prop = node[0]
    if prop.str_val notin ["global", "speed", "color"]:
      if node.kind == nnkExprEqExpr:
        vars.add nnkIdentDefs.new_tree(node[0], empty, node[1])
      elif node.kind == nnkExprColonExpr:
        vars.add nnkIdentDefs.new_tree(node[0], node[1], empty)
      else:
        error("expected `my_param = 1`, `my_param: int` kind: " & $node.kind, node)

    else:

      assign.add new_assignment(prop.copy_nim_node, node[1].copy_nim_node)
  result.add vars
  result.add assign

proc var_types(vars: NimNode): seq[tuple[name, typ: string]] =
  for sect in vars:
    if sect.kind == nnkVarSection:
      for node in sect:
        let t = node[2]
        let typ = if t.kind in nnkLiterals:
          if t.kind in nnkStrLit..nnkTripleStrLit:
            "string"
          else:
            ($t.kind)[3..^4].to_lower_ascii
        elif t == ident"true" or t == ident"false":
          "bool"
        elif t.kind == nnkEmpty:
          node[1].str_val
        else:
          error("Don't know how to create getter/setter for " & t.repr, t)
          return
        result.add (node[0].str_val, typ)

proc build_ctors(name_str: string, type_name, cradle_name: NimNode, params: seq[NimNode]): NimNode =
  var ctor_body = quote do:
    instance.ctrl.create_new()
    result = `cradle_name`

  # TODO: ident normalization
  let vars = params_to_vars(params)
  let var_names = var_types(vars).map_it it.name
  for name in var_names:
    let setter = ident("set_" & name)
    let named_var = ident(name)
    let stmt = quote do:
      result.user_ctrl.`setter`(`named_var`)
    ctor_body.add(stmt)

  let instance_def = new_ident_defs("instance".ident, type_name)
  var params = @[type_name] & instance_def & vars[0][0..^1]

  var global = "global".ident
  if "global" notin var_names:
    params &= new_ident_defs(global, new_empty_node(), ident("global_default"))
  ctor_body.add quote do:
    result.ctrl.set_global(`global`)

  var speed = "speed".ident
  if "speed" notin var_names:
    params &= new_ident_defs(speed, new_empty_node(), new_float_lit_node(1.0))
  ctor_body.add quote do:
    result.ctrl.set("speed", `speed`)

  var color = "color".ident
  if "color" notin var_names:
    params &= new_ident_defs(color, new_empty_node(), bind_sym"eraser")
  ctor_body.add quote do:
    result.ctrl.set_color(`color`)

  # add baked in constructor params for speed, color, etc.
  # probably shouldn't be here.
  result = new_proc(
    name = "new".ident.postfix("*"),
    params = params,
    pragmas = nnkPragma.new_tree("discardable".ident),
    body = ctor_body
  )

proc build_accessors(vars: NimNode): NimNode =
  result = new_stmt_list()
  for (name, typ) in var_types(vars):
    let var_name = name.ident
    let typ = typ.ident
    let setter_name = ("set_" & name).ident
    let getter_name = ("get_" & name).ident
    result.add quote do:
      me.user_ctrl.`getter_name` = proc(): `typ` =
        `var_name`
      me.user_ctrl.`setter_name` = proc(val: `typ`) =
        `var_name` = val

proc build_public_interface(vars, type_name: NimNode): NimNode =
  result = new_stmt_list()
  for (name, typ) in var_types(vars):
    let
      getter_name = name.ident
      setter_name = ident(name & "=")
      getter_accessor = ident("get_" & name)
      setter_accessor = ident("set_" & name)
      typ = typ.ident
    result.add quote do:
      proc `getter_name`*(self: `type_name`): `typ` =
        self.user_ctrl.`getter_accessor`()

      proc `setter_name`*(self: `type_name`, val: `typ`) =
        self.user_ctrl.`setter_accessor`(val)

proc build_controller(name_str: string, type_name, vars: NimNode): NimNode =
  result = quote do:
    type
      `type_name`* = ref object
        getter*: proc():int
        setter*: proc(val {.inject.}: int)
  var fields = result[0][2][0][2]
  var getter = fields[0].copy_nim_tree
  var setter = fields[1].copy_nim_tree
  fields.del(0)
  fields.del(0)

  for (name, typ) in var_types(vars):
    var getter = getter.copy_nim_tree
    var setter = setter.copy_nim_tree

    echo "NAME: ", name, " ", typ.ident

    getter[0][1] = ident("get_" & name)
    getter[1][0][0] = typ.ident

    setter[0][1] = ident("set_" & name)
    setter[1][0][1][1] = typ.ident

    fields.add getter
    fields.add setter

proc extract_class_info(name_node: NimNode): tuple[name: string, params: seq[NimNode]] =
  result = if name_node.kind == nnkIdent:
      (name_node.str_val, @[])
    elif name_node.kind in [nnkCall, nnkCommand]:
      name_node[0].expect_kind nnkIdent
      (name_node[0].str_val, name_node[1..^1])
    else:
      error("expected `name my_name` or `name my_name(my_param1 = 1, my_param2 = 2, ...)`", name_node)
      return

proc build_class(name_node: NimNode, is_clone: bool): NimNode =
  let base_class = ident"ScriptNode"
  let (name, params) = extract_class_info(name_node)

  let
    type_name = (name & "Type").to_upper_ascii.nim_ident_normalize.ident
    var_name = name.ident
    cradle_name = (name & "_cradle").to_lower_ascii.nim_ident_normalize.ident
    clone_name = name & "_clone"
    vars = params_to_vars(params)
    ctors = build_ctors(name, type_name, cradle_name, params)
    controller_type = (name & "Controller").to_upper_ascii.nim_ident_normalize.ident
    controller = build_controller(name, controller_type, vars)
    iface = build_public_interface(vars, type_name)

  result = new_stmt_list()
  if is_clone:
    result.add quote do:
      let me {.inject.} = `type_name`(name: `clone_name`, ctrl: Controller(), user_ctrl: `controller_type`())
      `cradle_name` = me
  else:
    let name_str = name
    result.add quote do:
      `controller`
      type
        `type_name`* = ref object of `base_class`
          create_new*: proc()
          user_ctrl*: `controller_type`
      `iface`
      let me {.inject.} = `type_name`(name: `name_str`, user_ctrl: `controller_type`(), ctrl: Controller())
      let `var_name`* {.inject.} = me
      var `cradle_name`*: `type_name`
      `ctors`

proc build_vars_and_accessors(name_node: NimNode): NimNode =
  let
    (name, params) = extract_class_info(name_node)
    vars = params_to_vars(params)
    accessors = build_accessors(vars)

  result = gen_ast(vars, accessors):
    vars
    accessors

proc pop_name_node(ast: NimNode): NimNode =
  let ident_name = "name"
  for i, node in ast:
    if node.kind in [nnkCommand, nnkCall]:
      if node.len == 2 and node[1].kind in [nnkIdent, nnkCall] and node[0].eq_ident(ident_name):
        result = node[1]
        ast.del(i)
        break

macro load_enu_script*(file_name, include_name: string, is_clone: bool): untyped =
  let
    file_name = file_name.str_val
    is_clone: bool = is_clone.bool_val
  let ast = parse_stmt(file_name.static_read, file_name)
  let name_node = pop_name_node(ast)
  let include_file = quote do:
    include `include_name`
  result = new_stmt_list()
  var inner = new_stmt_list()
  if name_node.kind != nnkNilLit:
    result.add build_class(name_node, is_clone)
    result.add include_file
    inner.add build_vars_and_accessors(name_node)

  else:
    result.add quote do:
      let me {.inject.} = ScriptNode(ctrl: Controller())
    result.add include_file

  inner.add ast
  result.add new_block_stmt(inner)
