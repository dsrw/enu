import pkg/godot
import
  godotapi/
    [control, input_event_screen_touch, input_event_screen_drag, scene_tree]
import core

gdobj GUI of Control:
  method input(event: InputEvent) =
    if event of InputEventScreenTouch:
      let event = event as InputEventScreenTouch
      let index = byte(event.index)
      if index in state.ignored_touches:
        self.get_tree().set_input_as_handled()
        if not event.pressed:
          state.ignored_touches.excl index
    elif event of InputEventScreenDrag:
      let event = event as InputEventScreenDrag
      let index = byte(event.index)
      if index in state.ignored_touches:
        self.get_tree().set_input_as_handled()
