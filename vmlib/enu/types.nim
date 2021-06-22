import helpers, strutils, strformat
import macros

type
  Vector3* = object
    x*, y*, z*: float

  Node* = ref object of RootObj
    id: int
    name*: string

  Controller*  = object
    action_running*: bool
    advance_state_machine*: proc(): bool
    yield_script*: proc()
    begin_move*: proc(direction: Vector3, steps: float, self: ScriptNode)
    begin_turn*: proc(axis: Vector3, degrees: float, self: ScriptNode)
    set*: proc(var_name: string, value: float)
    get*: proc(var_name: string): float
    create_new*: proc()
    set_color*: proc(col: ColorIndex)

  ScriptNode* = ref object of Node
    ctrl*: Controller

  ScriptNode3D* = ref object of ScriptNode

  ColorIndex* = enum
    eraser = 0,
    blue = 1,
    red = 2,
    green = 3,
    black = 4,
    white = 5

  DrawMode* = enum
    GridMode, VoxelMode

  Energy* = range[0.0..100.0]

proc vec3*(x, y, z: float): Vector3 {.inline.} =
  Vector3(x:x, y:y, z:z)

const
  UP* = vec3(0, 1, 0)
  DOWN* = vec3(0, -1, 0)
  BACK* = vec3(0, 0, 1)
  FORWARD* = vec3(0, 0, -1)
  RIGHT* = vec3(1, 0, 0)
  LEFT* = vec3(-1, 0, 0)

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
