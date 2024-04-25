import std/[algorithm, math]
import godotapi/[panel_container, option_button, line_edit, margin_container]
import godot
import core, gdutils, models/colors

type SizeState = enum
  Stable
  Growing
  Shrinking

const
  open_symbol = "  "
  enter_symbol = "  "

gdobj Settings of PanelContainer:
  var
    env_button, color_button: OptionButton
    megapixels, font_size, toolbar_size, level, server_address: LineEdit
    megapixels_up, megapixels_down, font_size_up, font_size_down,
      toolbar_size_up, toolbar_size_down, switch_level, full_screen, run_server,
      connect: Button
    remote_container: MarginContainer
    remote_margin: int
    repeat_timers: Table[string, MonoTime]
    size_state: SizeState
    size_timer = MonoTime.high
    previous_height: float

  proc update_values() =
    self.megapixels.text = \"{state.config.mega_pixels:.2f}"
    self.font_size.text = $state.config.font_size
    self.toolbar_size.text = $state.config.toolbar_size
    self.level.text = state.config.level

  method ready*() =
    with self:
      env_button = find("Environments", OptionButton)
      color_button = find("PlayerColor", OptionButton)
      megapixels = find("Megapixels", LineEdit)
      font_size = find("FontSize", LineEdit)
      toolbar_size = find("ToolbarSize", LineEdit)
      level = find("Level", LineEdit)
      server_address = find("ServerAddress", LineEdit)
      megapixels_up = find("MegapixelsUp", Button)
      megapixels_down = find("MegapixelsDown", Button)
      font_size_up = find("FontSizeUp", Button)
      font_size_down = find("FontSizeDown", Button)
      toolbar_size_up = find("ToolbarSizeUp", Button)
      toolbar_size_down = find("ToolbarSizeDown", Button)
      switch_level = find("SwitchLevel", Button)
      full_screen = find("FullScreen", Button)
      run_server = find("RunServer", Button)
      connect = find("Connect", Button)
      remote_container = find("RemoteContainer", MarginContainer)

    self.remote_margin = self.remote_container.get_constant("margin_bottom")
    self.env_button.add_item("default")
    for env in environments.keys.to_seq.sorted:
      if env notin ["default", "none"]:
        self.env_button.add_item(env)
    self.env_button.add_item("none")

    for color in Colors:
      if color != eraser:
        self.color_button.add_item($color)

    if not ?state:
      state = GameState.init

    for button in [
      self.megapixels_up, self.megapixels_down, self.font_size_up,
      self.font_size_down, self.toolbar_size_up, self.toolbar_size_down
    ]:
      self.bind_signal(button, "pressed", button.name)
      self.bind_signal(button, "button_up", button.name)
      self.bind_signal(button, "button_down", button.name)

    self.bind_signal(self.switch_level, "pressed", "SwitchLevel")
    self.bind_signal(self.connect, "pressed", "Connect")

    for button in [self.full_screen, self.run_server]:
      self.bind_signal(button, ("pressed", "toggled"), button, button.text)

    for line_edit in [
      self.megapixels, self.font_size, self.toolbar_size, self.level
    ]:
      self.bind_signal(line_edit, "text_changed", line_edit.name)
      self.bind_signal(line_edit, "text_entered", line_edit.name)
      self.bind_signal(line_edit, "focus_exited", line_edit.name)

    self.update_values()

  method on_pressed*(name: string) =
    if find(name, Button).disabled:
      return

    echo \"pressed {name}"
    const megapixel_steps = [
      (low: 0.01, high: 0.05, step: 0.01),
      (0.05, 0.4, 0.05),
      (0.4, 1.0, 0.1),
      (1.0, 4.0, 0.5),
      (4.0, 10.0, 1.0)
    ]
    if name == "MegapixelsUp":
      let megapixels = state.config.mega_pixels
      for step in megapixel_steps:
        if megapixels < step.high:
          state.config_value.value:
            mega_pixels = round(mega_pixels + step.step, 2)
          break
    elif name == "MegapixelsDown":
      let megapixels = state.config.mega_pixels
      for step in megapixel_steps.reversed:
        if megapixels > step.low:
          state.config_value.value:
            mega_pixels = round(mega_pixels - step.step, 2)
          break

    if name == "FontSizeUp" and state.config.font_size < 96:
      state.config_value.value:
        font_size = state.config.font_size + 2
    elif name == "FontSizeDown" and state.config.font_size > 4:
      state.config_value.value:
        font_size = state.config.font_size - 2
    elif name == "ToolbarSizeUp" and state.config.toolbar_size < 120:
      state.config_value.value:
        toolbar_size = state.config.toolbar_size + 5
    elif name == "ToolbarSizeDown" and state.config.toolbar_size > 20:
      state.config_value.value:
        toolbar_size = state.config.toolbar_size - 5
    elif name == "SwitchLevel":
      state.config_value.value:
        level = self.level.text
      self.switch_level.disabled = true
    elif name == "LevelDown":
      state.config_value.value:
        level = resolve_level_name(state.config.world, state.config.level, -1)

    self.update_values()

  method on_button_up*(name: string) =
    self.repeat_timers[name] = MonoTime.high

  method on_button_down*(name: string) =
    self.repeat_timers[name] = get_mono_time() + 0.4.seconds

  method on_toggled*(button: Button, default: string) =
    let value = button.text != default
    if not value:
      button.text = "   "
    else:
      button.text = default

    # if button.name == "FullScreen":
    #   state.config_value.value:
    #     start_full_screen = value
    if button.name == "RunServer":
      self.server_address.editable = not value
      self.connect.disabled = value
      self.size_state = if value: Shrinking else: Growing

    self.update_values()

  method on_text_changed*(text, name: string) =
    if name == "Level":
      self.switch_level.disabled = text == ""
      if text == state.config.level:
        self.switch_level.text = open_symbol
      else:
        self.switch_level.text = enter_symbol

    echo \"changed {name}: {text}"

  method on_text_entered*(text, name: string) =
    echo \"entered {name}: {text}"
    if name == "Level":
      self.on_pressed("SwitchLevel")

    self.update_values()

  method on_focus_exited*(name: string) =
    self.on_text_entered(find(name, LineEdit).text, name)

  method process*(delta: float) =
    # self.switch_level.rect_size = self.font_size_down.rect_size
    let now = get_mono_time()
    for name, time in self.repeat_timers.mpairs:
      if now > time:
        time = now + 0.14.seconds
        self.on_pressed(name)

    let diff = (3333 * delta).int
    if self.size_state == Shrinking:
      if self.previous_height != self.rect_size.y:
        self.previous_height = self.rect_size.y
        let margin = self.remote_container.get_constant("margin_bottom")
        self.remote_container.add_constant_override(
          "margin_bottom", margin - diff
        )
      else:
        self.size_state = Stable
    elif self.size_state == Growing:
      var new_margin =
        self.remote_container.get_constant("margin_bottom") + diff
      if new_margin >= self.remote_margin:
        new_margin = self.remote_margin
        self.size_state = Stable
      self.remote_container.add_constant_override("margin_bottom", new_margin)
