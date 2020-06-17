import ../godotapi / [input, input_event, gd_os, node, scene_tree, viewport_container, packed_scene, resource_saver],
       godot,
       globals

gdobj Game of Node:
  proc `mouse_captured=`*(value: bool) =
    set_mouse_mode(if value: MOUSE_MODE_CAPTURED else: MOUSE_MODE_VISIBLE)

  proc mouse_captured*(): bool =
    get_mouse_mode() == MOUSE_MODE_CAPTURED

  proc init*() =
    for signal in ["pause", "save", "reload"]:
      self.add_user_signal(signal)

  method ready*() {.gdExport.} =
    state.game = self
    self.mouse_captured = true
    globals.capture_mouse = proc() =
      self.mouse_captured = true
    globals.release_mouse = proc() =
      self.mouse_captured = false
    globals.save_and_reload = proc() =
      trigger("save")
      trigger("reload")
      globals.save_scene()
    globals.save_scene = proc(scene_name: string) =
      let
        packed_scene = gdnew[PackedScene]()
        data = self.find_node("data")
      debug $packed_scene.pack(data)
      debug $save(&"res://scenes/{scene_name}.tscn", packed_scene)
    globals.pause = proc() =
      trigger("pause")

  method input*(event: InputEvent) =
    if not self.mouse_captured and event.is_action_pressed("click") or
       event.is_action_pressed("toggle_mouse_captured"):
      if globals.editing():
        hide_editor()
        for cb in selected_items:
          cb()
        selected_items = @[]
      self.mouse_captured = not self.mouse_captured
      self.get_tree().set_input_as_handled()

    if event.is_action_pressed("toggle_fullscreen"):
      set_window_fullscreen not is_window_fullscreen()
    elif event.is_action_pressed("save_and_reload"):
      globals.save_and_reload()
    elif event.is_action_pressed("pause"):
      globals.pause()
    elif event.is_action_pressed("mode_1"):
      tool_mode = CodeMode
    elif event.is_action_pressed("mode_2"):
      tool_mode =  BlockMode
    elif event.is_action_pressed("mode_3"):
      tool_mode =  ObjectMode

proc get_game*(): Game = state.game as Game
