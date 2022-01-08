import godotapi / [input, input_event, gd_os, node, scene_tree, viewport,
                   packed_scene, resource_saver, sprite, control, viewport,
                   performance, label, theme, dynamic_font, resource_loader, main_loop,
                   gd_os, project_settings, input_map, input_event, input_event_action]
import godot, model_citizen
import std / [monotimes, times, os, jsonutils, json, math]
import core, globals, controllers/unit_controllers

const
  version = static_exec("git describe --tags HEAD")

type
  UserConfig = object
    font_size: Option[int]
    dock_icon_size: Option[float]
    world: Option[string]
    show_stats: Option[bool]
    mega_pixels: Option[float]

let state = GameState.active
let config = state.config

var
  timer = 0.0
gdobj Game of Node:
  var
    reticle: Control
    scaled_viewport: Viewport
    triggered = false
    saved_mouse_captured_state = false
    stats: Label
    last_index = 1
    saved_mouse_position: Vector2
    scale_factor* = 0.0
    rescale_at = get_mono_time()
    unit_controller: UnitController

  method process*(delta: float) =
    if config.show_stats:
      let
        fps = get_monitor(TIME_FPS)
        time = get_mono_time()
      var
        total: times.Duration
        highest: tuple[name: string, duration: times.Duration]
      for name, dur in durations:
        if dur > highest.duration:
          highest = (name, dur)
        total += dur

      let vram = get_monitor(RENDER_VIDEO_MEM_USED)
      self.stats.text = &"FPS: {fps}\nUser: {total}\n{highest.name}: {highest.duration}\nscale_factor: {self.scale_factor}\nvram: {vram}"

    if get_mono_time() > self.rescale_at:
      self.rescale_at = MonoTime.high
      self.rescale()

    durations.clear()

  proc rescale*() =
    let vp = self.get_viewport().size
    self.scale_factor = sqrt(config.mega_pixels * 1_000_000.0 / (vp.x * vp.y))
    self.scaled_viewport.size = vp * self.scale_factor

  method notification*(what: int) =
    if what == main_loop.NOTIFICATION_WM_QUIT_REQUEST:
      self.get_tree().quit()
    if what == main_loop.NOTIFICATION_WM_ABOUT:
      alert(&"Enu {version}\n\n© 2021 Scott Wadden", "Enu")

  proc add_platform_input_actions =
    let suffix = "." & host_os
    for action in get_actions():
      let action = action.as_string()
      if suffix in action:
        let name = action.replace(suffix, "")
        if has_action(name):
          erase_action(name)
        add_action(name)
        for event in get_action_list(action):
          let event = event.as_object(InputEvent)
          action_add_event(name, event)
        erase_action(action)

  proc init* =
    state.nodes.game = self
    self.unit_controller = UnitController.init
    let
      screen_scale = get_screen_scale(-1)
      work_dir = get_user_data_dir()
      config_file = join_path(work_dir, "config.json")

    echo "Screen size: ", get_screen_size(-1)

    var initial_user_config = UserConfig()
    if file_exists(config_file):
      let opt = Joptions(allow_missing_keys: true, allow_extra_keys: true)
      initial_user_config.from_json(read_file(config_file).parse_json, opt)

    var uc = initial_user_config
    assert not state.is_nil
    assert not state.config.is_nil
    with state.config:
      font_size = uc.font_size ||= (14 * screen_scale).int
      dock_icon_size = uc.dock_icon_size ||= 50 * screen_scale
      world = uc.world ||= "default"
      show_stats = uc.show_stats ||= false
      mega_pixels = uc.mega_pixels ||= 2.0
      world_dir = join_path(work_dir, config.world)
      script_dir = join_path(config.world_dir, "scripts")
      lib_dir = join_path(get_executable_path().parent_dir(), "..", "..", "..", "vmlib")

    create_dir(state.config.script_dir)
    if uc != initial_user_config:
      config_file.write_file(uc.to_json.pretty)

    self.add_platform_input_actions()

    when defined(dist):
      if host_os == "macosx":
        config.lib_dir = join_path(exe_dir.parent_dir, "Resources", "vmlib")
      elif host_os == "windows":
        config.lib_dir = join_path(exe_dir, "vmlib")
      elif host_os == "linux":
        config.lib_dir = join_path(exe_dir.parent_dir, "lib", "vmlib")

    print config

  proc load_world() =
    discard
    # TODO
    # data_node = self.find_node("data")
    # assert not data_node.is_nil
    #
    # if file_exists(config.scene):
    #   let
    #     pos = data_node.get_position_in_parent()
    #     parent = data_node.getParent()
    #     packed_scene = load(config.scene) as PackedScene
    #
    #   parent.remove_child(data_node)
    #   data_node = packed_scene.instance()
    #   parent.add_child(data_node)
    #   parent.move_child(data_node, pos)
    #   data_node.owner = parent
    #   echo &"loaded {config.scene}"

  method ready* =
    state.nodes.data = state.nodes.game.find_node("Level").get_node("data")
    assert not state.nodes.data.is_nil
    self.scaled_viewport = self.get_node("ViewportContainer/Viewport") as Viewport
    self.bind_signals(self.get_viewport(), "size_changed")
    assert not self.scaled_viewport.is_nil
    self.load_world()
    self.get_tree().set_auto_accept_quit(false)
    let (theme_holder, theme) = if hostOS == "macosx":
      ( self.find_node("ThemeHolder").as(Container),
        load("res://themes/AppleTheme.tres").as(Theme))
    else:
      let node = self.find_node("Panels").as(Container)
      (node, node.theme)
    let
      font = theme.default_font.as(DynamicFont)
      bold_font = theme.get_font("bold_font", "RichTextLabel")
                        .as(DynamicFont)

    font.size = config.font_size
    bold_font.size = config.font_size
    theme_holder.theme = theme

    self.reticle = self.find_node("Reticle").as(Control)
    self.stats = self.find_node("stats").as(Label)
    self.stats.visible = config.show_stats

    globals.reload_scripts = proc() =
      trigger("save")
      trigger("reload")

    globals.save_and_reload = proc() =
      trigger("save")
      trigger("reload_all")
      globals.save_scene()

    globals.save_scene = proc(immediate: bool) =
      discard
      # TODO

    globals.pause_scripts = proc() =
      trigger("pause")

    state.target_flags.changes:
      if MouseCaptured.added:
        let center = self.get_viewport().get_visible_rect().size * 0.5
        self.saved_mouse_position = self.get_viewport().get_mouse_position()
        warp_mouse_position(center)
        set_mouse_mode MOUSE_MODE_CAPTURED
      elif MouseCaptured.removed:
        set_mouse_mode MOUSE_MODE_VISIBLE
        warp_mouse_position(self.saved_mouse_position)

      if Reticle.added:
        self.reticle.visible = true
      elif Reticle.removed:
        self.reticle.visible = false

    state.mouse_captured = true
    game_ready = true
    trigger("game_ready")

  proc update_action_index*(change: int) =
    state.action_index += change
    if state.action_index < 0:
      state.action_index = state.action_count
      self.obj_mode(state.action_index)
    if state.action_index == 0:
      self.code_mode()
    elif state.action_index == state.action_count:
      self.obj_mode(state.action_index)
    elif state.action_index > state.action_count:
      self.code_mode()
    else:
      self.block_mode(state.action_index)

  proc next_action*() =
    self.update_action_index(1)

  proc prev_action*() =
    self.update_action_index(-1)

  proc code_mode*(update_actionbar = true, restore = false) =
    if restore and state.action_index == 0:
      self.block_mode(self.last_index)
    else:
      state.tool.value = Code
      state.reticle = true
      state.action_index = 0
      if update_actionbar:
        self.trigger("update_actionbar", 0)

  proc block_mode*(index: int, update_actionbar = true) =
    self.last_index = index
    state.tool.value = Block
    state.reticle = false
    state.action_index = index
    if update_actionbar:
      self.trigger("update_actionbar", index)

  proc obj_mode*(index: int, update_actionbar = true) =
    state.tool.value = Place
    state.reticle = false
    state.action_index = index
    if update_actionbar:
      self.trigger("update_actionbar", index)

  method on_size_changed() =
    self.rescale_at = get_mono_time()

  method unhandled_input*(event: InputEvent) =
    if event.is_action_pressed("command_mode"):
      state.command_mode = true
    elif event.is_action_released("command_mode"):
      state.command_mode = false
    elif event.is_action_pressed("save_and_reload"):
      globals.save_and_reload()
      self.get_tree().set_input_as_handled()
    elif event.is_action_pressed("pause"):
      globals.pause_scripts()
    elif event.is_action_pressed("clear_console"):
      trigger("clear_console")
    elif event.is_action_pressed("toggle_console"):
      trigger("toggle_console")
    elif event.is_action_pressed("quit"):
      if host_os != "macosx":
        save_scene(true)
    elif not state.editing:
      if event.is_action_pressed("toggle_mouse_captured"):
        state.mouse_captured = not state.mouse_captured
        self.get_tree().set_input_as_handled()

      if event.is_action_pressed("toggle_fullscreen"):
        set_window_fullscreen not is_window_fullscreen()
      elif event.is_action_pressed("toggle_code_mode"):
        self.code_mode(restore = true)
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
        self.block_mode(6)
      elif event.is_action_pressed("mode_8"):
        self.obj_mode(7)

proc get_game*(): Game = Game(state.nodes.game)
