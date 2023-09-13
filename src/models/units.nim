import std / [os, sugar, with, tables]
import godotapi / spatial
from pkg / core / godotcoretypes import Basis
import core, models / [states, colors], libs / interpreters

proc init_shared*(self: Unit) =
  assert ?self.shared_value
  if ?self.parent:
    self.shared = self.parent.shared
  elif not ?self.shared:
    self.shared_value.init
    var shared = Shared(id: self.id & "-shared")
    shared.init_zen_fields
    self.shared = shared

  if self.id notin self.shared.edits:
    let table = init_table[Vector3, VoxelInfo]()
    self.shared.edits[self.id] = table

proc init_unit*[T: Unit](self: T) =
  with self:
    units = ~seq[Unit]
    transform_value = ~self.start_transform
    global_flags = ~set[GlobalModelFlags]
    local_flags = ~(set[LocalModelFlags], flags = {SyncLocal})
    code_value = ~Code
    velocity_value = ~Vector3
    scale_value = ~1.0
    glow_value = ~float
    color_value = ~self.start_color
    errors = ScriptErrors.init
    current_line_value = ~0
    collisions = ~seq[(string, Vector3)]
    shared_value = ~Shared
    sight_query_value = ~(SightQuery, flags = {SyncLocal})
    eval_value = ~("", flags = {SyncLocal})

  self.init_shared
  self.global_flags += Visible

proc position*(self: Unit): Vector3 =
  if Global in self.global_flags:
    self.transform.origin
  else:
    self.transform.origin.global_from(self.parent)

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
    state.config.data_dir / self.id
  else:
    self.parent.data_dir / self.id

proc data_file*(self: Unit): string =
  self.data_dir / self.id & ".json"

method main_thread_joined*(self: Unit) {.base, gcsafe.} = discard

method worker_thread_joined*(self: Unit) {.base, gcsafe.} = discard

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
  var edits = self.shared.edits
  for id, edit in self.shared.edits:
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
  self.shared.edits = edits

method ensure_visible*(self: Unit) {.base, gcsafe.} =
  discard

method on_collision*(self: Model, partner: Model, normal: Vector3) {.base, gcsafe.} =
  discard

method off_collision*(self: Model, partner: Model) {.base, gcsafe.} =
  discard

proc destroy*[T: Unit](self: T) =
  assert ?self

  if self of Sign:
    # :( Sign(self) will fail to compile if T is a Build or a Bot.
    Sign(Unit(self)).owner = nil

  # :( Parent isn't set properly for instances on the main thread
  if self.parent == nil and "instance" notin self.id:
    let shared = self.shared
    shared.edits.destroy
    self.shared = nil
    self.shared_value.destroy
    Zen.thread_ctx.free(shared)
  else:
    self.shared = nil

  for field in self[].fields:
    when field is Zen:
      # :(
      if ?field and not field.destroyed:
        field.destroy

  if state.open_unit == self:
    state.open_unit = nil
  if Unit(state.open_sign) == self:
    state.open_sign = nil

  Zen.thread_ctx.free(self)

proc clear_all*(units: ZenSeq[Unit]) =
  var roots = units.value
  for unit in roots:
    if not (unit of Player):
      unit.walk_tree proc(unit: Unit) =
        unit.units.clear
      units -= unit
