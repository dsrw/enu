import ../godotapi / [scene_tree, kinematic_body, material, mesh_instance, spatial],
       godot, strutils, strformat, tables, math,
       engine

const
  MOVE_SPEED = 100.0
  UP = vec3(0, 1, 0)
  BACK = vec3(0, 0, 1)

gdobj NimBot of KinematicBody:
  var
    material* {.gdExport.}: Material
    name* {.gdExport.}: string
    callback: proc(delta: float): bool
    engine: Engine
    
  proc move(speed, steps: float) =
    var last_change = vec3(float.high, float.high, float.high)
    let
      facing = BACK.rotated(UP, self.rotation.y)
      finish = self.translation - facing * steps

    self.callback = proc(delta: float): bool =
      let change = abs(finish - self.translation)
      if change > last_change:
        self.translation = finish
        return false
      else:
        discard self.move_and_slide(facing * speed * delta, UP)
        last_change = change
        return true
    self.engine.pause()

  proc turn(degrees: float) =
    var duration = 0.0
    self.callback = proc(delta: float): bool =
      duration += delta
      self.rotate(UP, deg_to_rad(degrees * delta))
      duration <= 1
    self.engine.pause()

  proc forward(steps: float) = self.move(-MOVE_SPEED, steps)
  proc back(steps: float) = self.move(MOVE_SPEED, steps)
  proc left(degrees: float) = self.turn(degrees)
  proc right(degrees: float) = self.turn(-degrees)

  method ready*() =
    let
      skin = self.get_node("Mannequiny").as(Spatial)
      mesh = skin.get_node("root/Skeleton/body001").as(MeshInstance)
    
    mesh.material_override = self.material
    discard skin.callv("transition_to", new_array(1.new_variant))

    self.engine = load(&"{self.name}.nim")
    if self.engine != nil:
        self.engine.
          expose("exposed", "forward", proc(e: Engine, a: VmArgs) =
            forward(self, get_float(a, 0))).
          expose("exposed", "back", proc(e: Engine, a: VmArgs) =
            back(self, get_float(a, 0))).
          expose("exposed", "left", proc(e: Engine, a: VmArgs) =
            left(self, get_float(a, 0))).
          expose("exposed", "right", proc(e: Engine, a: VmArgs) =
            right(self, get_float(a, 0))).
          expose("exposed", "print", proc(e: Engine, a: VmArgs) =
            print(get_string(a, 0))).
          call("run")
    else:
      print &"Couldn't load {self.name}.nim"

  method physics_process*(delta: float64) =
    if self.callback == nil or not self.callback(delta):
      discard self.engine.resume()
