import ../godotapi / [input, input_event, gd_os, node, scene_tree, viewport_container,
                      packed_scene, resource_saver, sprite, control, viewport,
                      performance, label, theme, dynamic_font, resource_loader, main_loop, gd_os]
import godot, threadpool, times, os, json_serialization
import core, globals

var
  timer = 0.0
gdobj Game of Node:
  var
    reticle*: Control
    viewport_container: ViewportContainer
    triggered = false
    ready = false
    scene_packer: PackedScene
    save_requested: Option[DateTime]
    saved_mouse_captured_state = false
    perf: Label
    saving = false
    quitting = false
    save_thread: system.Thread[Game]

  proc pack_scene() {.thread.} =
    echo $self.scene_packer.pack(data_node)

  method process*(delta: float) =
    timer += delta
    if timer >= 1:
      timer = 0
      var
        total: times.Duration
        highest: tuple[name: string, duration: times.Duration]
      for name, dur in durations:
        if dur > highest.duration:
          highest = (name, dur)
        total += dur
      let fps = get_monitor(TIME_FPS)
      self.perf.text = &"FPS: {fps}\nUser: {total}\n{highest.name}: {highest.duration}"
      durations.clear()

    trace:
      if self.saving and not self.save_thread.running:
        debug $save(config.scene, self.scene_packer)
        self.saving = false
      elif not self.saving and self.save_requested and now() > self.save_requested.get:
        self.save_requested = none(DateTime)
        self.saving = true
        create_thread[Game](self.save_thread, pack_scene, self)
      elif self.quitting and not self.saving:
        self.get_tree().quit()

  proc `mouse_captured=`*(captured: bool) =
    if captured:
      # center mouse before capturing to ensure clicks are handled on macos
      let center = self.get_viewport().get_visible_rect().size * 0.5
      trigger("mouse_captured")
      warp_mouse_position(center)
      set_mouse_mode MOUSE_MODE_CAPTURED
      skip_next_mouse_move = true
    else:
      trigger("mouse_released")
      set_mouse_mode MOUSE_MODE_VISIBLE

  proc mouse_captured*(): bool =
    get_mouse_mode() == MOUSE_MODE_CAPTURED

  proc shrink*(): int =
    self.viewport_container.stretch_shrink.int

  proc `shrink=`*(val: int) =
    self.viewport_container.stretch_shrink = val

  method notification*(what: int) =
    if what == main_loop.NOTIFICATION_WM_QUIT_REQUEST:
      self.quitting = true
      save_scene(true)

  proc init* =
    let
      screen_scale = get_screen_scale()
      work_dir = get_user_data_dir()
      config_file = join_path(work_dir, "config.json")

    if not file_exists(config_file):
      let default_config = Config(
        downscale: int screen_scale,
        font_size: (14 * screen_scale).int,
        dock_icon_size: 50 * screen_scale,
        world: "default"
      )
      JSON.save_file(config_file, default_config, pretty = true)
    config = JSON.load_file(config_file, Config)
    echo repr(config)
    config.world_dir = join_path(work_dir, config.world)
    config.script_dir = join_path(config.world_dir, "scripts")
    config.scene = join_path(config.world_dir, "data.tscn")
    config.screen_scale = screen_scale
    create_dir(config.script_dir)
    echo get_executable_path()
    let exe_dir = parent_dir get_executable_path()
    config.lib_dir = join_path(exe_dir, "..", "..", "..", "vmlib")
    if host_os == "macosx":
      if "/Enu.app/" in exe_dir:
        config.lib_dir = join_path(exe_dir.parent_dir, "Resources", "vmlib")

    echo &"Using world dir {config.world_dir}"

  proc load_world() =
    data_node = self.find_node("data")
    assert not data_node.is_nil

    if file_exists(config.scene):
      let
        pos = data_node.get_position_in_parent()
        parent = data_node.getParent()
        packed_scene = load(config.scene) as PackedScene

      parent.remove_child(data_node)
      data_node = packed_scene.instance()
      parent.add_child(data_node)
      parent.move_child(data_node, pos)
      data_node.owner = parent
      echo &"loaded {config.scene}"

  method ready* =
    trace:
      self.viewport_container = self.get_node("ViewportContainer").as(ViewportContainer)
      self.scene_packer = gdnew[PackedScene]()
      self.load_world()
      self.get_tree().set_auto_accept_quit(false)
      assert not self.viewport_container.is_nil
      state.game = self
      if hostOS == "macosx":
        let
          theme = load("res://themes/AppleTheme.tres").as(Theme)
          screen_scale = get_screen_scale()
          theme_holder = self.find_node("ThemeHolder").as(Container)
          font = theme.default_font.as(DynamicFont)
          bold_font = theme.get_font("bold_font", "RichTextLabel")
                           .as(DynamicFont)
        font.size = config.font_size
        bold_font.size = config.font_size
        theme_holder.theme = theme
        self.shrink = config.downscale

      self.mouse_captured = true
      self.reticle = self.find_node("Reticle").as(Control)
      self.perf = self.find_node("perf").as(Label)

      globals.capture_mouse = proc() =
        self.mouse_captured = true

      globals.release_mouse = proc() =
        self.mouse_captured = false

      globals.reload_scripts = proc() =
        trigger("save")
        trigger("reload")

      globals.save_and_reload = proc() =
        trigger("save")
        trigger("reload_all")
        globals.save_scene()

      globals.save_scene = proc(immediate: bool) =
        if immediate:
          self.save_requested = some(now())
        elif not self.save_requested:
          self.save_requested = some(now() + 5.seconds)

      globals.pause = proc() =
        trigger("pause")
      self.ready = true

  proc update_action_index*(change: int) =
    action_index += change
    if action_index < 1: action_index = action_count - 1
    if action_index >= action_count: action_index = 1
    self.block_mode(action_index)

  proc next_action*() =
    self.update_action_index(1)

  proc prev_action*() =
    self.update_action_index(-1)

  proc code_mode*(update_actionbar = true) =
    tool_mode = CodeMode
    self.trigger("retarget")
    self.reticle.visible = self.mouse_captured
    action_index = 0
    if update_actionbar:
      self.trigger("update_actionbar", 0)

  proc block_mode*(index: int, update_actionbar = true) =
    tool_mode = BlockMode
    self.trigger("retarget")
    self.reticle.visible = false
    action_index = index
    if update_actionbar:
      self.trigger("update_actionbar", index)

  proc obj_mode*(index: int, update_actionbar = true) =
    tool_mode = ObjectMode
    self.trigger("retarget")
    self.reticle.visible = false
    action_index = index
    if update_actionbar:
      self.trigger("update_actionbar", index)

  method unhandled_input*(event: InputEvent) =
    if event.is_action_pressed("command_mode"):
      self.saved_mouse_captured_state = self.mouse_captured
      self.mouse_captured = true
      command_mode = true
      self.trigger("command_mode_enabled")
    elif event.is_action_released("command_mode"):
      self.mouse_captured = self.saved_mouse_captured_state
      command_mode = false
      self.trigger("command_mode_disabled")
    elif event.is_action_pressed("save_and_reload"):
      globals.save_and_reload()
      self.get_tree().set_input_as_handled()
    elif event.is_action_pressed("pause"):
      globals.pause()
    elif event.is_action_pressed("clear_console"):
      trigger("clear_console")
    elif event.is_action_pressed("toggle_console"):
      trigger("toggle_console")
    elif not globals.editing():
      if event.is_action_pressed("toggle_mouse_captured"):
        self.mouse_captured = not self.mouse_captured
        if not self.mouse_captured:
          set_custom_mouse_cursor(nil)
          self.reticle.visible = false
        elif tool_mode == CodeMode:
          self.reticle.visible = true
        self.get_tree().set_input_as_handled()

      if event.is_action_pressed("toggle_fullscreen"):
        set_window_fullscreen not is_window_fullscreen()
      elif event.is_action_pressed("mode_1"):
        self.code_mode()
      elif event.is_action_pressed("mode_2"):
        self.block_mode(1)
      elif event.is_action_pressed("mode_3"):
        self.block_mode(2)
      elif event.is_action_pressed("mode_4"):
        self.block_mode(3)
      elif event.is_action_pressed("mode_5"):
        self.block_mode(4)
      elif event.is_action_pressed("mode_6"):
        self.block_mode(5)
      elif event.is_action_pressed("mode_7"):
        self.obj_mode(6)

proc get_game*(): Game = state.game as Game
