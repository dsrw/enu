import helpers, strutils, strformat
import macros

type
  Vector3* = object
    x*, y*, z*: float

  Node* = ref object of RootObj
    id: int
    name*: string

  Controller*  = object of RootObj
    action_running*: bool
    advance_state_machine*: proc(): bool
    yield_script*: proc()
    begin_move*: proc(direction: Vector3, steps: float, self: ScriptNode)
    begin_turn*: proc(axis: Vector3, degrees: float, self: ScriptNode)
    set*: proc(var_name: string, value: float)
    get*: proc(var_name: string): float
    create_new*: proc()

  ScriptNode* = ref object of Node
    ctrl*: Controller

  ScriptNode3D* = ref object of ScriptNode

proc vec3*(x, y, z: float): Vector3 {.inline.} =
  Vector3(x:x, y:y, z:z)

const
  UP* = vec3(0, 1, 0)
  DOWN* = vec3(0, -1, 0)
  BACK* = vec3(0, 0, 1)
  FORWARD* = vec3(0, 0, -1)
  RIGHT* = vec3(1, 0, 0)
  LEFT* = vec3(-1, 0, 0)

macro preprocess*(ident_name, file, class_name: static string): untyped =
  let ast = parse_stmt file.static_read
  # only checking top level for now. Make this more robust.
  for node in ast:
    if node.kind in [nnkCommand, nnkCall]:
      if node.len == 2 and node[1].kind == nnkIdent and node[0].eq_ident(ident_name):
        return node
    return parse_stmt(&"let self = {class_name}(ctrl: Controller())")

macro class_name*(name, base_class: untyped): untyped =
  name.expect_kind nnkIdent
  let name_str = name.str_val
  let type_name = (name_str & "Type").to_upper_ascii.nim_ident_normalize.ident
  let var_name = name_str.ident
  let cradle_name = (name_str & "_cradle").to_lower_ascii.nim_ident_normalize.ident
  let clone_name = name_str & "_clone"
  result = quote do:
    when is_clone and not declared(self):
      let self {.inject.} = `type_name`(name: `clone_name`, ctrl: Controller())
      `cradle_name` = self
    when not is_clone and not declared(self) and not declared(`var_name`) and not declared(`type_name`):
      type
        `type_name`* = ref object of `base_class`
          create_new*: proc()

      let `var_name`* {.inject.}  = `type_name`(name: `name_str`, ctrl: Controller())
      let self {.inject.} = `var_name`
      var `cradle_name`* {.inject.}: `type_name`

      proc new*(instance: `type_name`): `type_name` {.discardable.} =
        instance.ctrl.create_new()
        result = `cradle_name`

template forward*(target: ScriptNode, steps = 1.0) =
  target.ctrl.begin_move(FORWARD, steps, self)

template back*(target: ScriptNode, steps = 1.0) =
  target.ctrl.begin_move(BACK, steps, self)

template left*(target: ScriptNode, steps = 1.0) =
  target.ctrl.begin_move(LEFT, steps, self)

template right*(target: ScriptNode, steps = 1.0) =
  target.ctrl.begin_move(RIGHT, steps, self)

template turn_left*(target: ScriptNode, degrees = 90.0) =
  target.ctrl.begin_turn(LEFT, degrees, self)

template turn_right*(target: ScriptNode, degrees = 90.0) =
  target.ctrl.begin_turn(RIGHT, degrees, self)

proc `speed=`*(self: ScriptNode, speed: float) =
  self.ctrl.set("speed", speed)

proc speed*(self: ScriptNode): float =
  self.ctrl.get("speed")

template up*(target: ScriptNode3D, steps = 1.0) =
  target.ctrl.begin_move(UP, steps, self)

template down*(target: ScriptNode3D, steps = 1.0) =
  target.ctrl.begin_move(DOWN, steps, self)

template turn_up*(target: ScriptNode3D, degrees = 90.0) =
  target.ctrl.begin_turn(UP, degrees, self)

template turn_down*(target: ScriptNode3D, degrees = 90.0) =
  target.ctrl.begin_turn(DOWN, degrees, self)
