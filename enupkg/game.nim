import ../godotapi / [input, input_event, gd_os, node, scene_tree, viewport_container,
                      packed_scene, resource_saver, sprite, control],
       godot,
       globals

gdobj Game of Node:
  var
    reticle: Control
    viewport_container: ViewportContainer

  proc `mouse_captured=`*(captured: bool) =
    set_mouse_mode if captured:
      trigger("mouse_captured")
      MOUSE_MODE_CAPTURED
    else:
      trigger("mouse_released")
      MOUSE_MODE_VISIBLE

  proc mouse_captured*(): bool =
    get_mouse_mode() == MOUSE_MODE_CAPTURED

  proc shrink*(): float =
    float(self.viewport_container.stretch_shrink)

  method ready*() {.gdExport.} =
    state.game = self
    self.reticle = self.find_node("Reticle").as(Control)
    self.viewport_container = self.get_node("ViewportContainer").as(ViewportContainer)
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
      let
        packed_scene = gdnew[PackedScene]()
        data = self.find_node("data")
      debug $packed_scene.pack(data)
      debug $save(&"res://scenes/{scene_name}.tscn", packed_scene)

    globals.pause = proc() =
      trigger("pause")

  method unhandled_input*(event: InputEvent) =
    if event.is_action_pressed("save_and_reload"):
        globals.save_and_reload()
        self.get_tree().set_input_as_handled()
    elif event.is_action_pressed("save"):
        globals.reload_scripts()
        self.get_tree().set_input_as_handled()
    elif event.is_action_pressed("pause"):
        globals.pause()
    elif not globals.editing():
      if not self.mouse_captured and event.is_action_pressed("click") or
          event.is_action_pressed("toggle_mouse_captured"):
        self.mouse_captured = not self.mouse_captured
        self.get_tree().set_input_as_handled()

      if event.is_action_pressed("toggle_fullscreen"):
        set_window_fullscreen not is_window_fullscreen()
      elif event.is_action_pressed("mode_1"):
        trigger("retarget")
        tool_mode = CodeMode
        self.reticle.visible = true
      elif event.is_action_pressed("mode_2"):
        trigger("retarget")
        tool_mode =  BlockMode
        self.reticle.visible = false

      elif event.is_action_pressed("mode_3"):
        trigger("retarget")
        tool_mode =  ObjectMode
        self.reticle.visible = false

proc get_game*(): Game = state.game as Game
