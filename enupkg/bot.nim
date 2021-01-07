import ../godotapi / [scene_tree, kinematic_body, material, mesh_instance, spatial,
                      input_event, animation_player, resource_loader, packed_scene],
       godot, math, tables, std/with, times, sugar, os,
       globals, core, engine

var max_bot_index = 0
gdobj NimBot of KinematicBody:
  var
    speed = 1.0
    enu_script*: string
    material* {.gdExport.}, highlight_material* {.gdExport.},
      selected_material* {.gdExport.}: Material
    script_index* {.gdExport.} = 0
    callback: proc(delta: float): bool
    engine: Engine
    last_error: string
    orig_rotation: Vector3
    orig_translation: Vector3
    skin: Spatial
    mesh: MeshInstance
    paused* = true
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
    show_editor self.enu_script, self.engine

  proc print_error(msg: string) =
    if msg != self.last_error:
      self.last_error = msg
      print(msg)

  proc load_vars() =
    self.speed = self.engine.get_float("speed", "bot")

  proc move(direction: Vector3, steps: float): bool =
    self.load_vars()
    var duration = 0.0
    let
      moving = direction.rotated(UP, self.rotation.y)
      finish = self.translation + moving * steps
      finish_time = 1.0 / self.speed * steps

    self.callback = proc(delta: float): bool =
      duration += delta
      if duration >= finish_time:
        self.translation = finish
        return false
      else:
        discard self.move_and_slide(moving * self.speed, UP)
        return true
    true

  proc turn(degrees: float): bool =
    self.load_vars()
    var duration = 0.0
    # TODO: Why can't this be a one liner?
    var final_transform = self.transform
    final_transform.basis.rotate(UP, deg_to_rad(degrees))
    self.callback = proc(delta: float): bool =
      duration += delta
      self.rotate(UP, deg_to_rad(degrees * delta * self.speed))
      if duration <= 1.0 / self.speed:
        true
      else:
        self.transform = final_transform
        false
    true

  proc forward(steps: float): bool = self.move(FORWARD, steps)
  proc back(steps: float): bool = self.move(BACK, steps)
  proc left(steps: float): bool = self.move(LEFT, steps)
  proc right(steps: float): bool = self.move(RIGHT, steps)
  proc turn_left(degrees: float): bool = self.turn(degrees)
  proc turn_right(degrees: float): bool = self.turn(-degrees)

  proc error(e: ref VMQuit) =
    self.running = false
    err e.msg
    trigger("script_error")

  proc load_script() =
    trace:
      if self.enu_script == "none":
        return
      self.callback = nil

      try:
        if self.engine.is_nil:
          self.engine = Engine()
        if not self.paused and not self.engine.initialized:
          debug &"Loading {self.enu_script}"

          self.engine.load(self.enu_script, config.lib_dir)
          log_trace("loaded")
          with self.engine:
            expose("logo", "forward", a => self.forward(get_float(a, 0)))
            expose("logo", "back", a => self.back(get_float(a, 0)))
            expose("logo", "left", a => self.left(get_float(a, 0)))
            expose("logo", "right", a => self.right(get_float(a, 0)))
            expose("logo", "turn_left", a => self.turn_left(get_float(a, 0)))
            expose("logo", "turn_right", a => self.turn_right(get_float(a, 0)))
            expose("bot", "echo", a => echo_console(get_string(a, 0)))
            expose("bot", "play", proc(a: VmArgs): bool =
              let animation_name = get_string(a, 0)
              if animation_name == "":
                self.animation_player.stop(true)
              else:
                self.animation_player.play(animation_name)
              return false
            )
        log_trace("exposed")
        if not self.paused:
          self.running = self.engine.run()
          log_trace("running")
      except VMQuit as e:
        self.error(e)

  proc set_script() =
    self.enu_script = join_path(config.script_dir, &"bot_{self.script_index}.nim")

  proc setup*() =
    trace:
      self.script_index = max_bot_index
      inc max_bot_index
      self.name = "Bot_" & $self.script_index
      self.set_script()
      copy_file join_path(config.lib_dir, "enu", "default_bot.nim"), self.enu_script

  method ready*() =
    trace:
      if max_bot_index <= self.script_index:
        max_bot_index = self.script_index + 1
      self.set_script()
      with self:
        bind_signals(w"reload pause reload_all")
        skin = self.get_node("Mannequiny").as(Spatial)
        mesh = self.skin.get_node("root/Skeleton/body001").as(MeshInstance)
        animation_player = self.skin.get_node("AnimationPlayer").as(AnimationPlayer)
        orig_rotation = self.rotation
        orig_translation = self.translation
        set_default_material()
      log_trace()
      self.load_script()
      log_trace("load_script")

  method physics_process*(delta: float64) =
    trace:
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
    self.load_script()

  method on_reload*() =
    if not editing() or open_file == self.enu_script:
      self.paused = false
      self.reload()

  method on_reload_all*() =
    self.reload()

  method on_pause*() =
    self.paused = not self.paused
