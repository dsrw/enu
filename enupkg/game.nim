import ../godotapi / [input, input_event, gd_os, node, scene_tree, viewport_container,
                      packed_scene, resource_saver, sprite, control, viewport,
                      performance, label],
       godot, threadpool, times,
       core, globals

var
  timer = 0.0
gdobj Game of Node:
  var
    reticle*: Control
    viewport_container: ViewportContainer
    triggered = false
    ready = false
    frame_skip = 90
    pack: FlowVar[PackedScene]
    save_requested: Option[string]
    saved_mouse_captured_state = false
    perf: Label

  proc pack_scene(scene: Node): PackedScene =
    result = gdnew[PackedScene]()
    debug $result.pack(scene)

  method process*(delta: float) =
    timer += delta
    if timer >= 1:
      timer = 0
      var
        total: Duration
        highest: tuple[name: string, duration: Duration]
      for name, dur in durations:
        if dur > highest.duration:
          highest = (name, dur)
        total += dur
      let fps = get_monitor(TIME_FPS)
      self.perf.text = &"FPS: {fps}\nUser: {total}\n{highest.name}: {highest.duration}"
      durations.clear()

    trace:
      if not self.pack.is_nil and self.pack.is_ready:
        let
          scene_name = self.save_requested.get
          full_path = &"res://scenes/{scene_name}.tscn"
        self.save_requested = none(string)
        debug $save(full_path, ^self.pack)
        self.pack = nil
      elif self.pack.is_nil and self.save_requested.is_some:
        self.pack = spawn self.pack_scene(self.find_node("data"))

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

  method ready*() {.gdExport.} =
    state.game = self
    self.mouse_captured = true
    self.reticle = self.find_node("Reticle").as(Control)
    self.viewport_container = self.get_node("ViewportContainer").as(ViewportContainer)
    self.perf = self.find_node("perf").as(Label)
    self.shrink = 2
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

    globals.save_scene = proc(scene_name: string) =
      self.save_requested = some(scene_name)

    globals.pause = proc() =
      trigger("pause")
    self.ready = true
    #trigger "game_ready"

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

  method physics_process*(delta: int) =
    trace:
      if self.ready and not self.triggered and self.frame_skip == 0:
        self.triggered = true
        trigger "game_ready"
      elif self.ready and self.frame_skip > 0:
        self.frame_skip -= 1

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
    elif event.is_action_pressed("save"):
      globals.reload_scripts()
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
        self.obj_mode(4)

proc get_game*(): Game = state.game as Game
