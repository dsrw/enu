import ../godotapi / [scene_tree, kinematic_body, material, mesh_instance, spatial, input_event, animation_player],
       godot,
       math, sugar, tables, std/with,
       globals, engine

gdobj NimBot of KinematicBody:
  var
    speed = 1.0
    enu_script* {.gdExport.} = "scripts/scott.nim"
    material* {.gdExport.}, highlight_material* {.gdExport.},
      selected_material* {.gdExport.}: Material

    callback: proc(delta: float): bool
    engine: Engine
    last_error: string
    orig_rotation: Vector3
    orig_translation: Vector3
    skin: Spatial
    mesh: MeshInstance
    paused = false
    running = false
    animation_player: AnimationPlayer

  proc update_material*(value: Material) =
    self.mesh.set_surface_material(0, value)

  proc highlight*() =
    self.update_material(self.highlight_material)

  proc set_default_material*() =
    self.update_material(self.material)

  proc deselect*() =
    self.set_default_material()

  proc select*() =
    show_editor self.enu_script

  proc print_error(msg: string) =
    if msg != self.last_error:
      self.last_error = msg
      print(msg)

  proc load_vars() =
    self.speed = self.engine.call_float("get_speed")

  proc move(direction, steps: float): bool =
    self.load_vars()
    var duration = 0.0
    let
      facing = BACK.rotated(UP, self.rotation.y)
      finish_time = 1.0 / self.speed * steps

    self.callback = proc(delta: float): bool =
      duration += delta
      if duration > finish_time:
        return false
      else:
        discard self.move_and_slide(facing * (self.speed * direction), UP)
        return true
    true

  proc turn(degrees: float): bool =
    self.load_vars()
    var duration = 0.0
    self.callback = proc(delta: float): bool =
      duration += delta
      self.rotate(UP, deg_to_rad(degrees * delta * self.speed))
      duration <= 1.0 / self.speed
    true

  proc forward(steps: float): bool = self.move(-1.0, steps)
  proc back(steps: float): bool = self.move(1.0, steps)
  proc left(degrees: float): bool = self.turn(degrees)
  proc right(degrees: float): bool = self.turn(-degrees)

  proc error(e: ref VMQuit) =
    self.running = false
    errors[self.enu_script] = @[(e.msg, e.info)]
    err e.msg
    trigger("script_error")

  proc load_script() =
    debug &"Loading {self.enu_script}"
    errors[self.enu_script] = @[]
    self.callback = nil

    try:
      self.engine = dup load(self.enu_script):
        expose("bot", "forward", a => self.forward(get_float(a, 0)))
        expose("bot", "back", a => self.back(get_float(a, 0)))
        expose("bot", "left", a => self.left(get_float(a, 0)))
        expose("bot", "right", a => self.right(get_float(a, 0)))
        expose("bot", "print", a => print(get_string(a, 0)))
        expose("bot", "echo", a => echo_console(get_string(a, 0)))
        expose("bot", "play", proc(a: VmArgs): bool =
          let animation_name = get_string(a, 0)
          if animation_name == "":
            self.animation_player.stop(true)
          else:
            self.animation_player.play(animation_name)
          return false
        )
      self.running = self.engine.call("main")
    except VMQuit as e:
      self.error(e)

  method ready*() =
    with self:
      bind_signals("reload", "pause")
      skin = self.get_node("Mannequiny").as(Spatial)
      mesh = self.skin.get_node("root/Skeleton/body001").as(MeshInstance)
      animation_player = self.skin.get_node("AnimationPlayer").as(AnimationPlayer)
      orig_rotation = self.rotation
      orig_translation = self.translation
      set_default_material()
      load_script()

  method physics_process*(delta: float64) =
    if not self.paused:
      try:
        if self.running and (self.callback == nil or not self.callback(delta)):
          self.running = self.engine.resume()
      except VMQuit as e:
        self.error(e)

  method reload() =
    self.animation_player.stop(true)
    with self:
      translation = self.orig_translation
      rotation = self.orig_rotation
      paused = false
      load_script()

  method on_reload*() =
    if not editing() or open_file == self.enu_script:
      self.reload()

  method on_pause*() =
    self.paused = not self.paused
