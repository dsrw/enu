import std / os
import pkg / model_citizen
import godotapi / node
import core, models / [types, states], engine / engine

proc init*(_: type Model, node: Node): Model =
  result = Model(flags: ZenSet[ModelFlags].init, node: node)

proc file_name*(self: Unit): string =
  GameState.active.config.script_dir & &"/{self.id}.nim"

method on_begin_move*(self: Unit, direction: Vector3, steps: float): Callback {.base.} =
  quit "override me"

method on_begin_turn*(self: Unit, direction: Vector3, degrees: float): Callback {.base.} =
  quit "override me"

method clone*(self: Unit, clone_to: Unit, ctx: ScriptCtx): Unit {.base.} =
  quit "override me"

method code_template*(self: Unit, imports: string): string {.base.} =
  quit "override me"

method on_script_loaded*(self: Unit) {.base.} =
  quit "override me"
