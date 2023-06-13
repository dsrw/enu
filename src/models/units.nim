import std / [os, sugar, with, tables]
import godotapi / spatial
from pkg / core / godotcoretypes import Basis
import core, models / [states, colors], libs / interpreters

proc init_shared*(self: Unit) =
  if ?self.parent:
    self.shared = self.parent.shared
  else:
    self.shared.init
    var shared = Shared(id: self.id & "-shared")
    shared.init_zen_fields
    self.shared.value = shared

  if self.id notin self.shared.value.edits:
    let table = init_table[Vector3, VoxelInfo]()
    self.shared.value.edits[self.id] = table

proc init_unit*[T: Unit](self: T) =
  with self:
    units = Zen.init(seq[Unit])
    transform = Zen.init(self.start_transform)
    global_flags = ZenSet[GlobalModelFlags].init
    local_flags = ZenSet[LocalModelFlags].init(flags = {SyncLocal})
    code = ZenValue[Code].init
    velocity = ZenValue[Vector3].init
    scale = Zen.init(1.0)
    glow = ZenValue[float].init
    color = Zen.init(self.start_color)
    errors = ScriptErrors.init
    current_line = ZenValue[int].init
    collisions = ZenSeq[(string, Vector3)].init

  self.init_shared
  self.global_flags += Visible

proc find_root*(self: Unit, all_clones = false): Unit =
  result = self
  var parent = self.parent

  while parent != nil:
    result = parent

    if (all_clones and not ?parent.clone_of) or
        (not all_clones and Global in parent.global_flags):

      parent = nil
    else:
      parent = parent.parent

proc walk_tree*(units: seq[Unit], callback: proc(unit: Unit) {.gcsafe.}) =
  for unit in units:
    walk_tree(unit.units.value, callback)
    callback(unit)

proc walk_tree*(root: Unit, callback: proc(unit: Unit) {.gcsafe.}) =
  walk_tree(@[root], callback)

proc data_dir*(self: Unit): string =
  if self.parent.is_nil:
    state.config.value.data_dir / self.id
  else:
    self.parent.data_dir / self.id

proc data_file*(self: Unit): string =
  self.data_dir / self.id & ".json"

method main_thread_init*(self: Unit) {.base, gcsafe.} = discard

method on_begin_move*(self: Unit, direction: Vector3, steps: float,
    move_mode: int): Callback {.base, gcsafe.} =

  raise_assert "override me"

method on_begin_turn*(self: Unit, direction: Vector3, degrees: float,
    lean: bool, move_mode: int): Callback {.base, gcsafe.} =

  raise_assert "override me"

method clone*(self: Unit, clone_to: Unit, id: string): Unit {.base, gcsafe.} =
  raise_assert "override me"

method code_template*(self: Unit, imports: string): string {.base, gcsafe.} =
  read_file self.script_ctx.script

method reset*(self: Unit) {.base, gcsafe.} =
  discard

method collect_garbage*(self: Unit) {.base, gcsafe.} =
  var edits = self.shared.value.edits
  for id, edit in self.shared.value.edits:
    for loc, voxel in edit:
      if voxel.kind == Hole and voxel.color == action_colors[eraser]:
        var locations = edits[id]
        locations.del(loc)
        edits[id] = locations
      elif voxel.kind == Hole:
        var voxel = voxel
        voxel.color = action_colors[eraser]
        var locations = edits[id]
        locations[loc] = voxel
        edits[id] = locations
  self.shared.value.edits = edits

method ensure_visible*(self: Unit) {.base, gcsafe.} =
  discard

method on_collision*(self: Model, partner: Model, normal: Vector3) {.base, gcsafe.} =
  discard

method off_collision*(self: Model, partner: Model) {.base, gcsafe.} =
  discard

proc destroy*[T: Unit](self: T) =
  assert ?self

  if self.shared.valid and ?self.shared.value:
    let shared = self.shared.value
    self.shared.value = nil
    shared.edits.destroy
    Zen.thread_ctx.free(shared)
  for field in self[].fields:
    when field is Zen:
      # :(
      if ?field and not field.destroyed:
        field.destroy
  Zen.thread_ctx.free(self)

proc clear_all*(units: ZenSeq[Unit]) =
  var roots = units.value
  for unit in roots:
    unit.walk_tree proc(unit: Unit) =
      unit.units.clear
    if not (unit of Player):
      units -= unit
