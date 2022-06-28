import std / [monotimes, times, os, jsonutils, json, math]
import pkg / [godot, zippy / ziparchives]
import godotapi / [input, input_event, gd_os, node, scene_tree,
                   packed_scene, sprite, control, viewport, viewport_texture,
                   performance, label, theme, dynamic_font, resource_loader, main_loop,
                   project_settings, input_map, input_event_action, input_event_key, global_constants,
                   scroll_container]
import core, types, globals, controllers / [node_controllers, script_controllers], models / serializers

type
  UserConfig = object
    font_size: Option[int]
    dock_icon_size: Option[float]
    world: Option[string]
    show_stats: Option[bool]
    god_mode: Option[bool]
    mega_pixels: Option[float]
    start_full_screen: Option[bool]
    semicolon_as_colon: Option[bool]
    world_prefix: Option[string]

const auto_save_interval = 30.seconds
let state = GameState.active
let config = state.config

gdobj Game of Node:
  var
    reticle: Control
    scaled_viewport: Viewport
    triggered = false
    saved_mouse_captured_state = false
    stats: Label
    last_tool = state.tool.value
    saved_mouse_position: Vector2
    scale_factor* = 0.0
    rescale_at = get_mono_time()
    save_at = get_mono_time() + auto_save_interval
    node_controller: NodeController
    script_controller: ScriptController

  method process*(delta: float) =
    state.timeout_frame_at = get_mono_time() + 0.1.seconds
    inc state.frame_count
    let time = get_mono_time()
    if config.show_stats:
      let fps = get_monitor(TIME_FPS)
      var
        total: times.Duration
        highest: tuple[name: string, duration: times.Duration]
      for name, dur in durations:
        if dur > highest.duration:
          highest = (name, dur)
        total += dur

      let vram = get_monitor(RENDER_VIDEO_MEM_USED)
      self.stats.text = &"FPS: {fps}\nUser: {total}\n{highest.name}: {highest.duration}\nscale_factor: {self.scale_factor}\nvram: {vram}"

    if time > self.rescale_at:
      self.rescale_at = MonoTime.high
      self.rescale()
    if time > self.save_at:
      self.save_at = time + auto_save_interval
      save_world()

    if state.queued_action != "":
      var ev = gdnew[InputEventAction]()
      ev.action = state.queued_action
      ev.pressed = true
      state.queued_action = ""

      parse_input_event(ev)

    durations.clear()

  proc rescale*() =
    let vp = self.get_viewport().size
    self.scale_factor = sqrt(config.mega_pixels * 1_000_000.0 / (vp.x * vp.y))
    self.scaled_viewport.size = vp * self.scale_factor

  method notification*(what: int) =
    if what == main_loop.NOTIFICATION_WM_QUIT_REQUEST:
      save_world()
      self.get_tree().quit()
    if what == main_loop.NOTIFICATION_WM_ABOUT:
      alert(&"Enu {enu_version}\n\n© 2022 Scott Wadden", "Enu")

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

  proc load_user_config(): UserConfig =
    let
      work_dir = get_user_data_dir()
      config_file = join_path(work_dir, "config.json")
    if file_exists(config_file):
      let opt = Joptions(allow_missing_keys: true, allow_extra_keys: true)
      result.from_json(read_file(config_file).parse_json, opt)

  proc save_user_config(config: UserConfig) =
    let
      work_dir = get_user_data_dir()
      config_file = join_path(work_dir, "config.json")
    write_file(config_file, config.to_json.pretty)

  proc prepare_to_load_world() =
    let work_dir = get_user_data_dir()
    config.world_dir = join_path(work_dir, config.world)
    config.data_dir = join_path(config.world_dir, "data")
    config.script_dir = join_path(config.world_dir, "scripts")

    if not file_exists(config.world_dir / "world.json"):
      for file in walk_dir(config.lib_dir / "projects"):
        if config.world.ends_with file.path.split_file.name:
          file.path.extract_all(config.world_dir)

    create_dir(state.config.data_dir)
    create_dir(state.config.script_dir)

  proc init* =
    self.process_priority = -100
    state.nodes.game = self
    let
      screen_scale = if host_os == "macos":
        get_screen_scale(-1)
      else:
        get_screen_dpi(-1).float / 96.0

    echo "Screen size: ", get_screen_size(-1), " scale ", screen_scale

    var initial_user_config = self.load_user_config()

    var uc = initial_user_config
    assert not state.is_nil
    assert not state.config.is_nil

    state.config.font_size.value = uc.font_size ||= (20 * screen_scale).int
    with state.config:
      dock_icon_size = uc.dock_icon_size ||= 100 * screen_scale
      world_prefix = uc.world_prefix ||= "tutorial"
      world = uc.world ||= state.config.world_prefix & "-1"
      show_stats = uc.show_stats ||= false
      mega_pixels = uc.mega_pixels ||= 2.0
      start_full_screen = uc.start_full_screen ||= true
      semicolon_as_colon = uc.semicolon_as_colon ||= false
      lib_dir = join_path(get_executable_path().parent_dir(), "..", "..", "..", "vmlib")

    state.set_flag(God, uc.god_mode ||= false)

    set_window_fullscreen config.start_full_screen

    self.add_platform_input_actions()

    when defined(dist):
      let exe_dir = parent_dir get_executable_path()
      if host_os == "macosx":
        config.lib_dir = join_path(exe_dir.parent_dir, "Resources", "vmlib")
      elif host_os == "windows":
        config.lib_dir = join_path(exe_dir, "vmlib")
      elif host_os == "linux":
        config.lib_dir = join_path(exe_dir.parent_dir, "lib", "vmlib")

    self.prepare_to_load_world()
    self.node_controller = NodeController.init
    self.script_controller = ScriptController.init

    if uc != initial_user_config:
      self.save_user_config(uc)

  proc set_font_size(size: int) =
    var user_config = self.load_user_config()
    config.font_size.value = size
    user_config.font_size = some(size)
    self.save_user_config(user_config)

    let
      theme_holder = self.find_node("LeftPanel").as(Container)
      theme = theme_holder.theme
      font = theme.default_font.as(DynamicFont)
      bold_font = theme.get_font("bold_font", "RichTextLabel")
                        .as(DynamicFont)

    font.size = size
    bold_font.size = size
    theme_holder.theme = theme

  method ready* =
    state.nodes.data = state.nodes.game.find_node("Level").get_node("data")
    assert not state.nodes.data.is_nil
    self.scaled_viewport = self.get_node("ViewportContainer/Viewport") as Viewport
    self.bind_signals(self.get_viewport(), "size_changed")
    assert not self.scaled_viewport.is_nil
    if config.mega_pixels >= 1.0:
      self.scaled_viewport.get_texture.flags = FLAG_FILTER

    self.script_controller.load_player()
    load_world(self.script_controller)
    self.get_tree().auto_accept_quit = false
    self.set_font_size config.font_size.value

    self.reticle = self.find_node("Reticle").as(Control)
    self.stats = self.find_node("stats").as(Label)
    self.stats.visible = config.show_stats

    state.flags.changes:
      if MouseCaptured.added:
        let center = self.get_viewport().get_visible_rect().size * 0.5
        self.saved_mouse_position = self.get_viewport().get_mouse_position()
        warp_mouse_position(center)
        set_mouse_mode MOUSE_MODE_CAPTURED
      elif MouseCaptured.removed:
        set_mouse_mode MOUSE_MODE_VISIBLE
        warp_mouse_position(self.saved_mouse_position)

      if ReticleVisible.added:
        self.reticle.visible = true
      elif ReticleVisible.removed:
        self.reticle.visible = false

    state.push_flag MouseCaptured

  proc update_action_index*(change: int) =
    var index = int(state.tool.value) + change
    if index < 0:
      index = int Tools.high
    elif index > int Tools.high:
      index = int Tools.low

    state.tool.value = Tools(index)

  proc next_action*() =
    self.update_action_index(1)

  proc prev_action*() =
    self.update_action_index(-1)

  method on_size_changed() =
    self.rescale_at = get_mono_time()

  proc switch_world(diff: int) =
    if diff != 0:
      var world = config.world
      let prefix = config.world_prefix & "-"
      world.remove_prefix(prefix)
      var num = try:
        world.parse_int
      except ValueError:
        1
      num += diff
      var user_config = self.load_user_config()
      config.world = prefix & $num
      user_config.world = some(config.world)
      self.save_user_config(user_config)
    save_world()
    state.reloading = true
    state.pop_flag Playing
    state.units.clear
    NodeController.reset_nodes
    self.prepare_to_load_world()
    load_world(self.script_controller)
    state.reloading = false

  method unhandled_input*(event: InputEvent) =
    if EditorVisible in state.flags or ConsoleVisible in state.flags:
      if event.is_action_pressed("zoom_in"):
        self.set_font_size config.font_size.value + 1
      elif event.is_action_pressed("zoom_out"):
        self.set_font_size config.font_size.value - 1
    else:
      if event.is_action_pressed("next"):
        self.next_action()

      if event.is_action_pressed("previous"):
       self.prev_action()
        # NOTE: alt+enter isn't being picked up on windows if the editor is open. Needs investigation.
    if event.is_action_pressed("toggle_fullscreen") or (host_os == "windows" and
      CommandMode in state.flags and EditorVisible in state.flags and
      event of InputEventKey and event.as(InputEventKey).scancode == KEY_ENTER):

      set_window_fullscreen not is_window_fullscreen()
    elif event.is_action_pressed("next_world"):
      self.switch_world(+1)
    elif event.is_action_pressed("prev_world"):
      self.switch_world(-1)
    elif event.is_action_pressed("command_mode"):
      state.push_flag CommandMode
    elif event.is_action_released("command_mode"):
      state.pop_flag CommandMode
    elif event.is_action_pressed("save_and_reload"):
      self.switch_world(0)
      self.get_tree().set_input_as_handled()
      state.pop_flag Playing
    elif event.is_action_pressed("pause"):
      state.paused = not state.paused
    elif event.is_action_pressed("clear_console"):
      state.console.log.clear()
    elif event.is_action_pressed("toggle_console"):
      state.set_flag ConsoleVisible, ConsoleVisible notin state.flags
    elif event.is_action_pressed("quit"):
      if host_os != "macosx":
        save_world()
        self.get_tree().quit()
    elif EditorVisible notin state.flags:
      if event.is_action_pressed("toggle_mouse_captured"):
        state.set_flag MouseCaptured, MouseCaptured notin state.flags
        self.get_tree().set_input_as_handled()

    if event.is_action_pressed("toggle_code_mode"):
      if state.tool.value != CodeMode:
        self.last_tool = state.tool.value
        state.tool.value = CodeMode
      else:
        state.tool.value = self.last_tool
    elif event.is_action_pressed("mode_1"):
      state.tool.value = CodeMode
    elif event.is_action_pressed("mode_2"):
      state.tool.value = BlueBlock
    elif event.is_action_pressed("mode_3"):
      state.tool.value = RedBlock
    elif event.is_action_pressed("mode_4"):
      state.tool.value = GreenBlock
    elif event.is_action_pressed("mode_5"):
      state.tool.value = BlackBlock
    elif event.is_action_pressed("mode_6"):
      state.tool.value = WhiteBlock
    elif event.is_action_pressed("mode_7"):
      state.tool.value = BrownBlock
    elif event.is_action_pressed("mode_8"):
      state.tool.value = PlaceBot

  method on_meta_clicked(url: string) =
    if url.starts_with("nim://"):
      self.script_controller.eval(url[6..^1])
    elif shell_open(url) != Error.OK:
      state.logger("err", &"Unable to open url {url}")

proc get_game*(): Game = Game(state.nodes.game)
