import ../godotapi / [scene_tree, kinematic_body, material, mesh_instance, spatial, input_event],
       godot, strutils, strformat, tables, math,
       engine, cascade, sugar

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
    last_error: string
    orig_rotation: Vector3
    orig_translation: Vector3

  proc print_error(msg: string) =
    if msg != self.last_error:
      self.last_error = msg
      print(msg)

  proc move(speed, steps: float): bool =
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
    true

  proc turn(degrees: float): bool =
    var duration = 0.0
    self.callback = proc(delta: float): bool =
      duration += delta
      self.rotate(UP, deg_to_rad(degrees * delta))
      duration <= 1
    true

  proc forward(steps: float): bool = self.move(-MOVE_SPEED, steps)
  proc back(steps: float): bool = self.move(MOVE_SPEED, steps)
  proc left(degrees: float): bool = self.turn(degrees)
  proc right(degrees: float): bool = self.turn(-degrees)

  proc load_script() =
    let path = &"scripts/{self.name}.nim"
    self.callback = nil
    if (self.engine = load(path); self.engine != nil):
      let e = self.engine
      e.expose("enu", "forward", a => self.forward(get_float(a, 0)))
      e.expose("enu", "back", a => self.back(get_float(a, 0)))
      e.expose("enu", "left", a => self.left(get_float(a, 0)))
      e.expose("enu", "right", a => self.right(get_float(a, 0)))
      e.expose("enu", "print", a => print(get_string(a, 0)))
      e.call("run")
    else:
      print_error &"Unable to load {path}"

  method ready*() =
    let
      skin = self.get_node("Mannequiny").as(Spatial)
      mesh = skin.get_node("root/Skeleton/body001").as(MeshInstance)

    self.orig_rotation = self.rotation
    self.orig_translation = self.translation
    mesh.material_override = self.material
    discard skin.callv("transition_to", new_array(1.new_variant))
    self.load_script()

  method physics_process*(delta: float64) =
    if self.callback == nil or not self.callback(delta):
      discard self.engine.resume()

  method input*(event: InputEvent) =
    if event.is_action_released("reload_scripts"):
      self.translation = self.orig_translation
      self.rotation = self.orig_rotation
      self.load_script()
