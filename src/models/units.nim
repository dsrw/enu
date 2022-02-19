import std / [os, sugar]
import pkg / model_citizen
import godotapi / spatial
from pkg/core/godotcoretypes import Basis
import core, models / [types, states], libs / interpreters

proc init*(_: type Model, node: Node): Model =
  result = Model(flags: ZenSet[ModelFlags].init, node: node)

proc find_root*(self: Unit, all_clones = false): tuple[unit: Unit, offset: Vector3] =
  result.unit = self
  result.offset -= self.node.transform.origin
  var parent = self.parent

  while parent != nil:
    result.unit = parent

    if (all_clones and not parent.clone_of) or (not all_clones and Global in parent.flags):
      parent = nil

    else:
      result.offset -= parent.node.transform.origin
      parent = parent.parent

proc walk_tree*(units: seq[Unit], callback: proc(unit: Unit)) =
  for unit in units:
    callback(unit)
    walk_tree(unit.units.value, callback)

proc walk_tree*(root: Unit, callback: proc(unit: Unit)) =
  walk_tree(@[root], callback)

proc data_dir*(self: Unit): string =
  if self.parent.is_nil:
    GameState.active.config.data_dir / self.id
  else:
    self.parent.data_dir / self.id

proc script_file*(self: Unit): string =
  if self.clone_of != nil:
    self.clone_of.script_file
  else:
    GameState.active.config.script_dir / self.id & ".nim"

proc `transform=`*(self: Unit, value: Transform) {.inline.} =
  self.node.transform = value

proc transform*(self: Unit): Transform {.inline.} =
  self.node.transform

proc `origin=`*(self: Unit, value: Vector3) {.inline.} =
  var transform = self.node.transform
  transform.origin = value
  self.node.transform = transform

proc origin*(self: Unit): Vector3 {.inline.} =
  self.node.transform.origin

proc `basis=`*(self: Unit, value: Basis) {.inline.} =
  var transform = self.node.transform
  transform.basis = value
  self.node.transform = transform

proc basis*(self: Unit): Basis {.inline.} =
  self.node.transform.basis

proc data_file*(self: Unit): string =
  self.data_dir / self.id & ".json"

method on_begin_move*(self: Unit, direction: Vector3, steps: float, move_mode: int): Callback {.base.} =
  quit "override me"

method on_begin_turn*(self: Unit, direction: Vector3, degrees: float, move_mode: int): Callback {.base.} =
  quit "override me"

method clone*(self: Unit, clone_to: Unit): Unit {.base.} =
  quit "override me"

method code_template*(self: Unit, imports: string): string {.base.} =
  read_file self.script_ctx.script

method on_script_loaded*(self: Unit) {.base.} =
  quit "override me"

method load_vars*(self: Unit) {.base.} =
  quit "override me"

method reset*(self: Unit) {.base.} =
  quit "override me"

method on_collision*(self: Model, partner: Model, normal: Vector3) {.base.} =
  discard

method off_collision*(self: Model, partner: Model) {.base.} =
  discard
