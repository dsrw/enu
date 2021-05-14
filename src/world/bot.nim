import ../../godotapi / [scene_tree, kinematic_body, material, mesh_instance, spatial,
                         input_event, animation_player, resource_loader, packed_scene]
import godot, std / [math, tables, with, times, sugar, os, monotimes]
import ".." / [globals, core]
import ../engine / [engine, script_helpers]
import ../api/directions

include "default_robot.nim.nimf"

var max_bot_index = 0
gdobj NimBot of KinematicBody:
  var
    speed = 1.0
    enu_script*: string
    material* {.gdExport.}, highlight_material* {.gdExport.},
      selected_material* {.gdExport.}: Material
    script_index* {.gdExport.} = 0
    disabled* {.gdExport.} = false
    callback: proc(delta: float): bool
    saved_callback: proc(delta: float): bool
    engine: Engine
    last_error: string
    orig_rotation: Vector3
    orig_translation: Vector3
    skin: Spatial
    mesh: MeshInstance
    paused* = true
    running = false
    animation_player: AnimationPlayer
    advance_timer = MonoTime.high

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

  proc destroy*() =
    self.get_parent.remove_child(self)

  proc print_error(msg: string) =
    if msg != self.last_error:
      self.last_error = msg
      print(msg)

  proc load_vars() =
    self.speed = self.engine.get_float("speed", self.engine.module_name)

  proc move(direction: Vector3, steps: float): bool =
    self.load_vars()
    var duration = 0.0
    let
      moving = direction.rotated(Up, self.rotation.y)
      finish = self.translation + moving * steps
      finish_time = 1.0 / self.speed * steps

    self.callback = proc(delta: float): bool =
      duration += delta
      if duration >= finish_time:
        self.translation = finish
        return false
      else:
        discard self.move_and_slide(moving * self.speed, Up)
        return true
    self.start_advance_timer()
    true

  proc turn(degrees: float): bool =
    self.load_vars()
    var duration = 0.0
    # TODO: Why can't this be a one liner?
    var final_transform = self.transform
    final_transform.basis.rotate(Up, deg_to_rad(degrees))
    self.callback = proc(delta: float): bool =
      duration += delta
      self.rotate(Up, deg_to_rad(degrees * delta * self.speed))
      if duration <= 1.0 / self.speed:
        true
      else:
        self.transform = final_transform
        false
    self.start_advance_timer()
    true

  proc forward(steps: float): bool = self.move(Forward, steps)
  proc back(steps: float): bool = self.move(Back, steps)
  proc left(steps: float): bool = self.move(Left, steps)
  proc right(steps: float): bool = self.move(Right, steps)
  proc turn_left(degrees: float): bool = self.turn(degrees)
  proc turn_right(degrees: float): bool = self.turn(-degrees)

  proc error(e: ref VMQuit) =
    self.running = false
    err e.msg
    trigger("script_error")

  proc is_script_loadable(): bool =
    if self.enu_script != "none" and file_exists(self.enu_script):
      let current_code = read_file(self.enu_script).strip
      result = current_code != ""

  proc load_script() =
    trace:
      self.callback = nil

      try:
        if self.engine.is_nil:
          self.engine = Engine()
        if not self.is_script_loadable:
          return
        if not self.paused and not self.engine.initialized:
          debug &"Loading {self.enu_script}"
          let code = default_robot(self.enu_script.extract_filename)
          self.engine.load(config.script_dir, self.enu_script.split_file.name, code, config.lib_dir)
          log_trace("loaded")
          with self.engine:
            expose "yield_script", proc(a: VmArgs): bool =
              self.callback = self.saved_callback
              self.saved_callback = nil
              true
            expose("forward_impl", a => self.forward(get_float(a, 0)))
            expose("back_impl", a => self.back(get_float(a, 0)))
            expose("left_impl", a => self.left(get_float(a, 0)))
            expose("right_impl", a => self.right(get_float(a, 0)))
            expose("turn_left_impl", a => self.turn_left(get_float(a, 0)))
            expose("turn_right_impl", a => self.turn_right(get_float(a, 0)))
            expose("echo", a => echo_console(get_string(a, 0)))
            expose("play", proc(a: VmArgs): bool =
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
      write_file self.enu_script, ""

  method ready*() =
    trace:
      if max_bot_index <= self.script_index:
        max_bot_index = self.script_index + 1
      self.set_script()
      with self:
        skin = self.get_node("Mannequiny").as(Spatial)
        mesh = self.skin.get_node("root/Skeleton/body001").as(MeshInstance)
        animation_player = self.skin.get_node("AnimationPlayer").as(AnimationPlayer)
        orig_rotation = self.rotation
        orig_translation = self.translation
        set_default_material()

      if not self.disabled:
        self.bind_signals(w"reload pause reload_all")
        log_trace()
        self.load_script()
        log_trace("load_script")

  proc update_running_state(running: bool) =
    self.running = running

  method physics_process*(delta: float64) =
    trace:
      if not self.paused:
        try:
          if self.running:
            self.advance(delta)
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
