import ../godotapi / [input, input_event, gd_os, node, scene_tree, viewport_container, grid_map, packed_scene, resource_saver],
       godot,
       globals

type
  ToolMode* = enum
    CodeMode = 0, BlockMode = 1, ObjectMode = 2

proc onready(node: Node)

gdobj Game of Node:
  var
    tool_mode* {.gdExport.} = BlockMode
    grid_map: GridMap

  proc is_editing*():bool {.gdExport.} = globals.editing()

  proc `mouse_captured=`*(value: bool) =
    set_mouse_mode(if value: MOUSE_MODE_CAPTURED else: MOUSE_MODE_VISIBLE)

  proc mouse_captured*(): bool =
    get_mouse_mode() == MOUSE_MODE_CAPTURED

  method ready*() {.gdExport.} =
    onready(self)
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
      let packed_scene = gdnew[PackedScene]()
      debug $packed_scene.pack(self.get_tree().current_scene)
      debug $save(&"res://{scene_name}.tscn", packed_scene)
    globals.pause = proc() =
      trigger("pause")

    self.grid_map = self.find_node("GridMap").as(GridMap)

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
      self.tool_mode = CodeMode
    elif event.is_action_pressed("mode_2"):
      self.tool_mode =  BlockMode
    elif event.is_action_pressed("mode_3"):
      self.tool_mode =  ObjectMode

var
  current_game*: Game

proc onready(node: Node) =
  current_game = node.as(Game)
