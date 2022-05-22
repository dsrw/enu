import godotapi / [h_box_container, scene_tree, button, image_texture]
import pkg / [godot, model_citizen]
import models / [types, states]
import ".." / [core, globals, game, ui/preview_maker]

type
  PreviewResult = tuple[color: string, preview: Image]

let state = GameState.active

gdobj Toolbar of HBoxContainer:
  var
    preview_maker: PreviewMaker
    blocks = @["green", "red", "blue", "black", "white", "brown"]
    objects = @["bot"]
    preview_result: Option[PreviewResult]
    waiting = false

  method ready*() =
    self.bind_signals self, "action_changed"
    self.bind_signals "update_actionbar"
    self.preview_maker = self.get_node("../PreviewMaker") as PreviewMaker
    assert not self.preview_maker.is_nil

    state.flags.changes:
      if Playing.added:
        self.visible = false
      if Playing.removed:
        self.visible = true

  method process*(delta: float) =
    if self.preview_result.is_some:
      let
        p = self.preview_result.get
        b = self.get_node("Button-" & p.color) as Button
      self.preview_result = none(PreviewResult)
      var tex = gdnew[ImageTexture]()
      tex.create_from_image(p.preview)
      b.icon = tex

    if not self.waiting and self.blocks.len > 0:
      var color = self.blocks.pop()
      self.waiting = true
      self.preview_maker.generate_block_preview &"{color}-block-grid", proc(preview: Image) =
        self.preview_result = some (color: color, preview: preview)
        self.waiting = false
    if not self.waiting and self.blocks.len == 0 and self.objects.len > 0:
      let obj = self.objects.pop()
      self.waiting = true
      self.preview_maker.generate_object_preview obj, proc(preview: Image) =
        self.preview_result = some (color: obj, preview: preview)

  method on_update_actionbar(index: int) =
    let b = self.get_child(index) as Button
    b.set_pressed true

  method on_action_changed*(button_name: string) =
    case button_name[7..^1]:
    of "code": get_game().code_mode(update_actionbar = false)
    of "blue": get_game().block_mode(1, update_actionbar = false)
    of "red": get_game().block_mode(2, update_actionbar = false)
    of "green": get_game().block_mode(3, update_actionbar = false)
    of "black": get_game().block_mode(4, update_actionbar = false)
    of "white": get_game().block_mode(5, update_actionbar = false)
    of "brown": get_game().block_mode(6, update_actionbar = false)
    of "bot": get_game().obj_mode(7, update_actionbar = false)
