import ../../godotapi / [h_box_container, scene_tree, button, image_texture]
import godot
import std / [strscans]
import ".." / [core, globals, game, ui/preview_makers, api/block_colors]

var
  color_index = 0
  preview: tuple[image: Option[Image],
                 button_name: string]
  preview_maker: PreviewMaker
  waiting = false
  bot_generated = false

proc len[T: tuple | object](t: T): int =
  for _ in t.fields:
    inc result

gdobj Toolbar of HBoxContainer:
  method ready*() =
    trace:
      self.bind_signals self, "action_changed"
      self.bind_signals "update_actionbar"
      preview_maker = self.get_node("../PreviewMaker") as PreviewMaker
      assert not preview_maker.is_nil

  method process*(delta: float) =
    trace:
      if preview.image.is_some:
        let image = preview.image.get
        let button = self.get_node(preview.button_name) as Button
        var tex = gdnew[ImageTexture]()
        preview.image = none(Image)
        tex.create_from_image(image)
        button.icon = tex

      if not waiting and color_index < BlockColors.len:
        waiting = true
        preview_maker.generate_block_preview BlockColors[Colors(color_index)], proc(p: Image) =
          preview.image = some p
          waiting = false
        inc color_index
      if not waiting and color_index == BlockColors.len and not bot_generated:
        bot_generated = true
        waiting = true
        preview_maker.generate_object_preview "bot", proc(p: Image) =
          preview.image = some p

  method on_update_actionbar(index: int) =
    let b = self.get_child(index) as Button
    b.set_pressed true

  method on_action_changed*(button_name: string) =
    var index = 0

    if button_name == "code":
      get_game().code_mode(update_actionbar = false)
    elif button_name.scanf("block_$i", index):
      get_game().block_mode(index, update_actionbar = false)
    elif button_name == "bot":
      get_game().obj_mode(BlockColors.len, update_actionbar = false)
