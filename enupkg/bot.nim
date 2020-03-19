import ../godotapi / [scene_tree, kinematic_body, material, mesh_instance, spatial, input_event],
       godot, strutils, strformat, tables, math, sugar, sequtils,
       engine, globals

const
  MOVE_SPEED = 100.0
  UP = vec3(0, 1, 0)
  BACK = vec3(0, 0, 1)

gdobj NimBot of KinematicBody:
  var
    name* {.gdExport.}: string
    enu_script* {.gdExport.}: string
    material* {.gdExport.},
      highlight_material* {.gdExport.},
      selected_material* {.gdExport.}: Material

    callback: proc(delta: float): bool
    engine: Engine
    last_error: string
    orig_rotation: Vector3
    orig_translation: Vector3
    paused = false
    selected = false
    running = false

  proc update_material*(value: Material) =
    let
      skin = self.get_node("Mannequiny").as(Spatial)
      mesh = skin.get_node("root/Skeleton/body001").as(MeshInstance)
    mesh.material_override = value

  proc highlight*() {.gdExport.} =
    if not self.selected:
      self.update_material(self.highlight_material)

  proc stop_highlight*() {.gdExport.} =
    if not self.selected:
      self.update_material(self.material)

  proc stop_selected*() {.gdExport.} =
    self.selected = false
    self.stop_highlight()

  proc selected*() {.gdExport.} =
    self.selected = true
    self.update_material(self.selected_material)
    show_editor(self.enu_script)
    selected_items.add(proc() = self.stop_selected())

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
    self.enu_script = &"scripts/{self.name}.nim"
    self.callback = nil
    if (self.engine = load(self.enu_script); self.engine != nil):
      let e = self.engine
      e.expose("enu", "forward", a => self.forward(get_float(a, 0)))
      e.expose("enu", "back", a => self.back(get_float(a, 0)))
      e.expose("enu", "left", a => self.left(get_float(a, 0)))
      e.expose("enu", "right", a => self.right(get_float(a, 0)))
      e.expose("enu", "print", a => print(get_string(a, 0)))
      self.running = e.call("run")
    else:
      print_error &"Unable to load {self.enu_script}"

  method ready*() =
    self.bind_signals("reload", "pause")
    let
      skin = self.get_node("Mannequiny").as(Spatial)

    self.orig_rotation = self.rotation
    self.orig_translation = self.translation

    discard skin.callv("transition_to", new_array(1.new_variant))
    self.load_script()

  method physics_process*(delta: float64) =
    if not self.paused:
      try:
        if self.running and (self.callback == nil or not self.callback(delta)):
          self.running = self.engine.resume()
      except:
        print &"Error resuming {self.enu_script}:\n",
              get_current_exception_msg()

  method on_reload*() =
    self.translation = self.orig_translation
    self.rotation = self.orig_rotation
    self.paused = false
    self.load_script()

  method on_pause*() =
    self.paused = not self.paused
