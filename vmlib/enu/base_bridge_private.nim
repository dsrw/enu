import types

proc link_dependency_impl*(dep: Unit) = discard
proc action_running*(self: Unit): bool = discard
proc `action_running=`*(self: Unit, value: bool) = discard
proc yield_script*(self: Unit) = discard

proc begin_move*(
  self: Unit, direction: Vector3, steps: float, move_mode: int
) = discard

proc begin_turn*(
  self: Unit, axis: Vector3, steps: float, lean: bool, move_mode: int
) = discard

proc sleep_impl*(seconds = 1.0) = discard
proc `position=impl`*(self: Unit, position: Vector3) = discard

proc new_markdown_sign_impl*(
  self: Unit, instance: Sign, markdown: string, width = 1.0, height = 1.0,
  mono_width = 0, zoomable = true, billboard = false
) = discard
