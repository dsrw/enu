import std / [os, sugar]
import pkg / model_citizen
import godotapi / spatial
from pkg/core/godotcoretypes import Basis
import core, models / [types, states, colors], libs / interpreters

proc init*(_: type Model, node: Node): Model =
  result = Model(flags: ZenSet[ModelFlags].init, node: node)

proc find_root*(self: Unit, all_clones = false): Unit =
  result = self
  var parent = self.parent

  while parent != nil:
    result = parent

    if (all_clones and not parent.clone_of) or (not all_clones and Global in parent.flags):
      parent = nil
    else:
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

proc data_file*(self: Unit): string =
  self.data_dir / self.id & ".json"

method on_begin_move*(self: Unit, direction: Vector3, steps: float, move_mode: int): Callback {.base.} =
  quit "override me"

method on_begin_turn*(self: Unit, direction: Vector3, degrees: float, move_mode: int): Callback {.base.} =
  quit "override me"

method clone*(self: Unit, clone_to: Unit, id: string): Unit {.base.} =
  quit "override me"

method code_template*(self: Unit, imports: string): string {.base.} =
  read_file self.script_ctx.script

method on_script_loaded*(self: Unit) {.base.} =
  quit "override me"

method load_vars*(self: Unit) {.base.} =
  quit "override me"

method reset*(self: Unit) {.base.} =
  quit "override me"

method collect_garbage*(self: Unit) {.base.} =
  var edits = self.shared.edits
  for id, edit in self.shared.edits:
    var junk: seq[Vector3]
    for loc, voxel in edit:
      if voxel.kind == Hole and voxel.color == action_colors[eraser]:
        edits[id].del loc
      elif voxel.kind == Hole:
        var voxel = voxel
        voxel.color = action_colors[eraser]
        edits[id][loc] = voxel
  self.shared.edits = edits

method on_collision*(self: Model, partner: Model, normal: Vector3) {.base.} =
  discard

method off_collision*(self: Model, partner: Model) {.base.} =
  discard
