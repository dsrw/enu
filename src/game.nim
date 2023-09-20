import std / [monotimes, os, jsonutils, json, math, locks, random]
import pkg / [godot]
from dotenv import nil
import godotapi / [input, input_event, gd_os, node, scene_tree, packed_scene,
    sprite, control, viewport, viewport_texture, performance, label, theme,
    dynamic_font, resource_loader, main_loop, project_settings, input_map,
    input_event_action, input_event_key, global_constants, scroll_container]

import core, types, globals, controllers, models / [serializers, units, colors]

type
  UserConfig = object
    font_size: Option[int]
    dock_icon_size: Option[float]
    world_prefix: Option[string]
    world: Option[string]
    show_stats: Option[bool]
    god_mode: Option[bool]
    mega_pixels: Option[float]
    start_full_screen: Option[bool]
    semicolon_as_colon: Option[bool]
    listen_address: Option[string]
    connect_address: Option[string]
    player_color: Option[colortypes.Color]
    channel_size: Option[int]
    walk_speed*: Option[int]
    fly_speed*: Option[int]
    alt_walk_speed*: Option[int]
    alt_fly_speed*: Option[int]
    mouse_sensitivity*: Option[float]
    gamepad_sensitivity*: Option[float]
    invert_gamepad_y_axis*: Option[bool]

if file_exists(".env"):
  dotenv.overload()

gdobj Game of Node:
  var
    reticle: Control
    scaled_viewport: Viewport
    triggered = false
    saved_mouse_captured_state = false
    stats: Label
    last_tool = BlueBlock
    saved_mouse_position: Vector2
    rescale_at = get_mono_time()
    node_controller: NodeController
    script_controller: ScriptController

  method process*(delta: float) =
    Zen.thread_ctx.boop(max_duration = (1.0 / 60.0).seconds)
    inc state.frame_count
    let time = get_mono_time()
    if state.config.show_stats:
      let fps = get_monitor(TIME_FPS)

      let vram = get_monitor(RENDER_VIDEO_MEM_USED)
      var unit_count = 0
      state.units.value.walk_tree proc(unit: Unit) =
        inc unit_count

      self.stats.text = \"""

FPS: {fps}
scale_factor: {state.scale_factor}
vram: {vram}
units: {unit_count}
zen objects: {Zen.thread_ctx.len}
world: {state.world_name}

      """

    if time > self.rescale_at:
      self.rescale_at = MonoTime.high
      self.rescale()

    if state.queued_action != "":
      var ev = gdnew[InputEventAction]()
      ev.action = state.queued_action
      ev.pressed = true
      state.queued_action = ""

      parse_input_event(ev)

  proc rescale*() =
    let vp = self.get_viewport().size
    state.scale_factor = sqrt(state.config.mega_pixels *
        1_000_000.0 / (vp.x * vp.y))

    self.scaled_viewport.size = vp * state.scale_factor

  method notification*(what: int) =
    if what == main_loop.NOTIFICATION_WM_QUIT_REQUEST:
      state.push_flag Quitting
    if what == main_loop.NOTIFICATION_WM_ABOUT:
      alert \"Enu {enu_version}\n\n© 2023 Scott Wadden", "Enu"

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
    write_file(config_file, jsonutils.to_json(config).pretty)

  proc init* =
    self.process_priority = -100

    let
      screen_scale = if host_os == "macos":
        get_screen_scale(-1)
      else:
        get_screen_dpi(-1).float / 96.0

    var initial_user_config = self.load_user_config()

    var chan_size = initial_user_config.channel_size || 5000

    Zen.thread_ctx = ZenContext.init(id = \"main-{generate_id()}",
        chan_size = chan_size, buffer = false)

    state = GameState.init
    state.nodes.game = self

    var uc = initial_user_config
    ensure not state.is_nil

    let env_listen_address = get_env("ENU_LISTEN_ADDRESS")
    randomize()
    state.config_value.value:
      work_dir = get_user_data_dir()
      font_size = uc.font_size ||= (20 * screen_scale).int
      dock_icon_size = uc.dock_icon_size ||= 100 * screen_scale
      world_prefix = uc.world_prefix ||= "tutorial"
      world = uc.world ||= value.world_prefix & "-1"
      show_stats = uc.show_stats ||= false
      mega_pixels = uc.mega_pixels ||= 2.0
      start_full_screen = uc.start_full_screen ||= true
      semicolon_as_colon = uc.semicolon_as_colon ||= false
      lib_dir = join_path(get_executable_path().parent_dir(), "..", "..", "..",
          "vmlib")

      connect_address = uc.connect_address ||= ""
      listen_address = env_listen_address || (uc.listen_address ||= "")
      player_color = uc.player_color ||= color(rand(1.0), rand(1.0), rand(1.0))
      channel_size = uc.channel_size ||= chan_size
      world_dir = join_path(value.work_dir, value.world)
      walk_speed = uc.walk_speed ||= 500
      fly_speed = uc.fly_speed ||= 1500
      alt_walk_speed = uc.alt_walk_speed ||= 1000
      alt_fly_speed = uc.alt_fly_speed ||= 250
      mouse_sensitivity = uc.mouse_sensitivity ||= 5.0
      gamepad_sensitivity = uc.gamepad_sensitivity ||= 2.5
      invert_gamepad_y_axis = uc.invert_gamepad_y_axis ||= false

    state.set_flag(God, uc.god_mode ||= false)

    set_window_fullscreen state.config.start_full_screen

    self.add_platform_input_actions()

    when defined(dist):
      let exe_dir = parent_dir get_executable_path()
      if host_os == "macosx":
        state.config_value.value:
          lib_dir = join_path(exe_dir.parent_dir, "Resources", "vmlib")

      elif host_os == "windows":
        state.config_value.value:
          lib_dir = join_path(exe_dir, "vmlib")

      elif host_os == "linux":
        state.config_value.value:
          lib_dir = join_path(exe_dir.parent_dir, "lib", "vmlib")

    self.node_controller = NodeController.init
    self.script_controller = ScriptController.init

    self.save_user_config(uc)

  proc set_font_size(size: int) =
    if state.config.font_size != size:
      var user_config = self.load_user_config()
      state.config_value.value:
        font_size = size

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
    ensure not state.nodes.data.is_nil
    self.scaled_viewport =
        self.get_node("ViewportContainer/Viewport") as Viewport

    self.bind_signals(self.get_viewport(), "size_changed")
    ensure not self.scaled_viewport.is_nil
    if state.config.mega_pixels >= 1.0:
      self.scaled_viewport.get_texture.flags = FLAG_FILTER

    self.get_tree().auto_accept_quit = false
    self.set_font_size state.config.font_size

    self.reticle = self.find_node("Reticle").as(Control)
    self.stats = self.find_node("stats").as(Label)
    self.stats.visible = state.config.show_stats

    state.local_flags.changes:
      if Quitting.removed:
        self.get_tree().quit()
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

  method on_size_changed() =
    self.rescale_at = get_mono_time()

  proc switch_world(diff: int) =
    var config = state.config
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
      state.world_name = config.world
      user_config.world = some(config.world)
      self.save_user_config(user_config)
      config.world_dir = join_path(config.work_dir, config.world)
      state.config = config
    else:
      # force a reload of the current world
      let current_world = state.config.world_dir
      state.config_value.value: world_dir = ""
      state.config_value.value: world_dir = current_world

  method unhandled_input*(event: InputEvent) =
    if EditorVisible in state.local_flags or ConsoleVisible in state.local_flags:
      if event.is_action_pressed("zoom_in"):
        self.set_font_size state.config.font_size + 1
      elif event.is_action_pressed("zoom_out"):
        self.set_font_size state.config.font_size - 1
    else:
      if event.is_action_pressed("next"):
        state.update_action_index(1)

      if event.is_action_pressed("previous"):
        state.update_action_index(-1)
        # NOTE: alt+enter isn't being picked up on windows if the editor is
        # open. Needs investigation.
    if event.is_action_pressed("toggle_fullscreen") or (host_os == "windows" and
        CommandMode in state.local_flags and EditorVisible in state.local_flags and
        event of InputEventKey and
        event.as(InputEventKey).scancode == KEY_ENTER):

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
      state.pop_flag Playing
      state.push_flag ResettingVM
      self.switch_world(0)
      state.pop_flag ResettingVM
      self.get_tree().set_input_as_handled()

    elif event.is_action_pressed("pause"):
      state.paused = not state.paused
    elif event.is_action_pressed("clear_console"):
      state.console.log.clear()
    elif event.is_action_pressed("toggle_console"):
      state.set_flag ConsoleVisible, ConsoleVisible notin state.local_flags
    elif event.is_action_pressed("quit"):
      if host_os != "macosx":
        state.push_flag Quitting
    elif EditorVisible notin state.local_flags:
      if event.is_action_pressed("toggle_mouse_captured"):
        state.set_flag MouseCaptured, MouseCaptured notin state.local_flags
        self.get_tree().set_input_as_handled()

    if event.is_action_pressed("toggle_code_mode"):
      if state.tool != CodeMode:
        self.last_tool = state.tool
        state.tool = CodeMode
      else:
        state.tool = self.last_tool
    elif event.is_action_pressed("mode_1"):
      state.tool = CodeMode
    elif event.is_action_pressed("mode_2"):
      state.tool = BlueBlock
    elif event.is_action_pressed("mode_3"):
      state.tool = RedBlock
    elif event.is_action_pressed("mode_4"):
      state.tool = GreenBlock
    elif event.is_action_pressed("mode_5"):
      state.tool = BlackBlock
    elif event.is_action_pressed("mode_6"):
      state.tool = WhiteBlock
    elif event.is_action_pressed("mode_7"):
      state.tool = BrownBlock
    elif event.is_action_pressed("mode_8"):
      state.tool = PlaceBot

  method on_meta_clicked(url: string) =
    if url.starts_with("nim://"):
      ensure ?state.open_sign

      state.open_sign.owner.eval = url[6..^1]

    elif shell_open(url) != godotcoretypes.Error.OK:
      logger("err", \"Unable to open url {url}")
