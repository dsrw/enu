import ../godotapi / [input, input_event, gd_os, node, scene_tree, viewport_container, packed_scene, resource_saver, sprite],
       godot,
       globals

gdobj Game of Node:
  var reticle: Sprite
  proc `mouse_captured=`*(value: bool) =
    print "mouse captured", value
    set_mouse_mode(if value: MOUSE_MODE_CAPTURED else: MOUSE_MODE_VISIBLE)

  proc mouse_captured*(): bool =
    get_mouse_mode() == MOUSE_MODE_CAPTURED

  proc init*() =
    for signal in ["pause", "save", "reload"]:
      self.add_user_signal(signal)

  method ready*() {.gdExport.} =
    state.game = self
    #self.mouse_captured = true
    self.reticle = self.find_node("reticle").as(Sprite)
    globals.capture_mouse = proc() =
      self.mouse_captured = true
    globals.release_mouse = proc() =
      self.mouse_captured = false
    globals.reload_scripts = proc() =
      trigger("save")
      trigger("reload")
    globals.save_and_reload = proc() =
      reload_scripts()
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
    if event.is_action_pressed("save_and_reload"):
        globals.save_and_reload()
        self.get_tree().set_input_as_handled()
    if event.is_action_pressed("reload_scripts"):
        globals.reload_scripts()
        self.get_tree().set_input_as_handled()
    elif not globals.editing():
      if not self.mouse_captured and event.is_action_pressed("click") or
          event.is_action_pressed("toggle_mouse_captured"):
        self.mouse_captured = not self.mouse_captured
        self.get_tree().set_input_as_handled()
      if event.is_action_pressed("toggle_fullscreen"):
        set_window_fullscreen not is_window_fullscreen()

      elif event.is_action_pressed("pause"):
        globals.pause()
      elif event.is_action_pressed("mode_1"):
        tool_mode = CodeMode
        self.reticle.visible = true
      elif event.is_action_pressed("mode_2"):
        tool_mode =  BlockMode
        self.reticle.visible = false
      elif event.is_action_pressed("mode_3"):
        tool_mode =  ObjectMode
        self.reticle.visible = false

proc get_game*(): Game = state.game as Game
