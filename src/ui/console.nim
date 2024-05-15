import
  godotapi/[
    text_edit, scene_tree, node, input_event, input_event_key, rich_text_label,
    global_constants, scene_tree_tween, tween, property_tweener, method_tweener
  ]
import godot
import std/strutils
import core, gdutils

gdobj Console of RichTextLabel:
  var default_mouse_filter: int64

  method offset_x*(offset: float) {.gdexport.} =
    let width = self.rect_size.x
    self.rect_position = vec2(width * offset, self.rect_position.y)

  proc init*() =
    state.local_flags.changes:
      if ConsoleVisible.added:
        let tween = self.get_tree.create_tween
        self.visible = true
        discard
          tween
          .tween_method(
            self, "_offset_x", -1.0.to_variant, 0.0.to_variant,
            animation_duration
          )
          .set_trans(TRANS_EXPO)
          .set_ease(EASE_IN_OUT)
      elif ConsoleVisible.removed:
        let tween = self.get_tree.create_tween
        self.rect_position = vec2(0.0, self.rect_position.y)
        discard
          tween
          .tween_method(
            self, "_offset_x", 0.0.to_variant, -1.0.to_variant,
            animation_duration
          )
          .set_trans(TRANS_EXPO)
          .set_ease(EASE_IN_OUT)
        discard
          tween.tween_callback(self, "set_visible", new_array(false.to_variant))
    state.console.log.changes:
      if added:
        discard self.append_bbcode(change.item)
      elif removed:
        self.clear()
        discard self.append_bbcode(state.console.log.value.join("\n"))
        break

    self.default_mouse_filter = self.mouse_filter

  method ready*() =
    state.local_flags.changes:
      if MouseCaptured.added:
        self.mouse_filter = MOUSE_FILTER_IGNORE
      elif MouseCaptured.removed:
        self.mouse_filter = self.default_mouse_filter

    state.nodes.game.bind_signals(self, "meta_clicked")

    if ConsoleVisible notin state.local_flags:
      let tween = self.get_tree.create_tween
      self.opacity = 0.0
      discard tween.tween_property(
        self, "rect_position:x", (-self.rect_size.x).to_variant, 0.0
      )
      discard
        tween.tween_callback(self, "set_visible", new_array(false.to_variant))
      discard tween.tween_property(self, "modulate:a", 1.0.to_variant, 0.0)
