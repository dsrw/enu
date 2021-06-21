import macros, strformat, strutils, sugar

macro preprocess*(file, class_name: untyped): untyped =
  try:
    let
      file = file.str_val
      class_name = class_name.str_val
      ast = parse_stmt file.static_read
      ident_name = "name"

    # only checking top level for now. Make this more robust.
    for node in ast:
      if node.kind in [nnkCommand, nnkCall]:
        if node.len == 2 and node[1].kind in [nnkIdent, nnkCall] and node[0].eq_ident(ident_name):
          return node
    return parse_stmt(&"let self = {class_name}(ctrl: Controller())")
  except:
    # we don't have line info here, so we shouldn't
    # report errors. The same code will be parsed again
    # with line numbers later
    discard

proc params_to_vars(nodes: seq[NimNode]): NimNode =
  var vars = nnkVarSection.new_nim_node
  let empty = new_empty_node()
  for node in nodes:
    if node.kind == nnkExprEqExpr:
      vars.add nnkIdentDefs.new_tree(node[0], empty, node[1])
    elif node.kind == nnkExprColonExpr:
      vars.add nnkIdentDefs.new_tree(node[0], node[1], empty)
    else:
      error("expected `my_param = 1`, `my_param: int`", node)
  result = nnkStmtList.new_tree(vars)

proc var_types(vars: NimNode): seq[tuple[name, typ: string]] =
  for node in vars[0]:
    let t = node[2]
    let typ = if t.kind in nnkLiterals:
      ($t.kind)[3..^4].to_lower_ascii
    elif t.kind == nnkEmpty:
      node[1].str_val
    else:
      error("Don't know how to create getter/setter for " & t.repr, t)
      return
    result.add (node[0].str_val, typ)

proc build_ctors(name_str: string, type_name, vars, cradle_name: NimNode): NimNode =
  var ctor_body = quote do:
    instance.ctrl.create_new()
    result = `cradle_name`

  for (name, _) in var_types(vars):
    let setter = ident("set_" & name)
    let named_var = ident(name)
    let stmt = quote do:
      result.user_ctrl.`setter`(`named_var`)
    ctor_body.add(stmt)

  let instance_def = new_ident_defs("instance".ident, type_name)
  result = new_proc(
    name = "new".ident.postfix("*"),
    params = @[type_name] & instance_def & vars[0][0..^1],
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
      self.user_ctrl.`getter_name` = proc(): `typ` =
        `var_name`
      self.user_ctrl.`setter_name` = proc(val: `typ`) =
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

    getter[0][1] = ident("get_" & name)
    getter[1][0][0] = typ.ident

    setter[0][1] = ident("set_" & name)
    setter[1][0][1][1] = typ.ident

    fields.add getter
    fields.add setter

template section_marker*(section: string) {.pragma.}

macro class_name*(name, base_class: untyped): untyped =
  let (name_str, params) =
    if name.kind == nnkIdent:
      (name.str_val, @[])
    elif name.kind == nnkCall:
      name[0].expect_kind nnkIdent
      (name[0].str_val, name[1..^1])
    else:
      error("expected `name my_name` or `name my_name(my_param1 = 1, my_param2 = 2, ...)`", name)
      return
  let
    type_name = (name_str & "Type").to_upper_ascii.nim_ident_normalize.ident
    var_name = name_str.ident
    cradle_name = (name_str & "_cradle").to_lower_ascii.nim_ident_normalize.ident
    clone_name = name_str & "_clone"
    vars = params_to_vars(params)
    ctors = build_ctors(name_str, type_name, vars, cradle_name)
    controller_type = (name_str & "Controller").to_upper_ascii.nim_ident_normalize.ident
    controller = build_controller(name_str, controller_type, vars)
    accessors = build_accessors(vars)
    iface = build_public_interface(vars, type_name)
    vars_code = vars.repr
    accessors_code = accessors.repr

  result = quote do:
    when is_clone and enu_root:
      let self {.inject.} = `type_name`(name: `clone_name`, ctrl: Controller(), user_ctrl: `controller_type`())
      `cradle_name` = self
    when not is_clone and enu_root:
      `controller`
      type
        `type_name`* = ref object of `base_class`
          create_new*: proc()
          user_ctrl*: `controller_type`
      `iface`
      let self {.inject.} = `type_name`(name: `name_str`, user_ctrl: `controller_type`(), ctrl: Controller())
      let `var_name`* {.inject.} = self
      var `cradle_name`*: `type_name`
      `ctors`
    when not enu_root:
      `vars`
      `accessors`
