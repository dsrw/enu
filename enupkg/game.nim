import ../godotapi / [input, input_event, gd_os, node, scene_tree, viewport_container],
       godot,
       globals

gdobj Game of Node:
  proc is_editing*():bool {.gdExport.} = globals.editing()

  proc `mouse_captured=`*(value: bool) =
    set_mouse_mode(if value: MOUSE_MODE_CAPTURED else: MOUSE_MODE_VISIBLE)

  proc mouse_captured*(): bool =
    get_mouse_mode() == MOUSE_MODE_CAPTURED

  method ready*() {.gdExport.} =
    self.mouse_captured = true
    globals.capture_mouse = proc() =
      self.mouse_captured = true
    globals.release_mouse = proc() =
      self.mouse_captured = false
    globals.save_and_reload = proc() =
      trigger("save")
      trigger("reload")
    globals.pause = proc() =
      trigger("pause")

  method input*(event: InputEvent) =
    if event.is_action_pressed("click"):
      self.mouse_captured = true
    if event.is_action_pressed("toggle_mouse_captured"):
      if globals.editing():
        hide_editor()
        for cb in selected_items:
          cb()
        selected_items = @[]
      self.mouse_captured = not self.mouse_captured

      #let container = self.get_tree().root.get_node("Game/GameContainer").as(ViewportContainer)
      #print("grabbing focus")
      #container.grab_focus()
      #self.get_tree().set_input_as_handled()

    if event.is_action_pressed("toggle_fullscreen"):
      set_window_fullscreen not is_window_fullscreen()
      self.get_tree().set_input_as_handled()
    if event.is_action_pressed("save_and_reload"):
      globals.save_and_reload()
    if event.is_action_pressed("pause"):
      globals.pause()
