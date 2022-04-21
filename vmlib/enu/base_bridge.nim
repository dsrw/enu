import types

# NOTE: overridden by ScriptController. Only for tests.
var current_active_unit: Unit
proc register_active*(self: Unit) = current_active_unit = self
proc active_unit*(): Unit = current_active_unit
# /NOTE

proc write_stack_trace*() = discard
proc id*(self: Unit): string = discard
proc position*(self: Unit): Vector3 = discard
proc local_position*(self: Unit): Vector3 = discard
proc start_position*(self: Unit): Vector3 = discard
proc speed*(self: Unit): float = discard
proc `speed=`*(self: Unit, speed: float) = discard
proc scale*(self: Unit): float = discard
proc `scale=`*(self: Unit, scale: float) = discard
proc glow*(self: Unit): float = discard
proc `glow=`*(self: Unit, energy: float) = discard
proc global*(self: Unit): bool = discard
proc `global=`*(self: Unit, global: bool) = discard
proc rotation*(self: Unit): float = discard
proc `rotation=`*(self: Unit, degrees: float) = discard
proc hit*(self: Unit, node: Unit): Vector3 = discard
proc `velocity=`*(self: Unit, velocity: Vector3) = discard
proc velocity*(self: Unit): Vector3 = discard
proc color*(self: Unit): Colors = discard
proc `color=`*(self: Unit, color: Colors) = discard

# TODO: These should be in base_bridge_private, but are currently needed outside of base_api.
proc echo_console*(msg: string) = discard
proc exit*(exit_code = 0, msg = "") = discard
proc new_instance*(src, dest: Unit) = discard
proc exec_instance*(self: Unit) = discard
proc wake*(self: Unit) = discard
proc link_dependency*(dep: not Unit) = discard
proc create_new*(self: Unit) = discard
proc frame_count*(): int = discard
