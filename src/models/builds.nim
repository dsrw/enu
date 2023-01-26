import std / [hashes, tables, sets, options, sequtils, math, wrapnils,
  monotimes, sugar, deques, macros]
import godotapi / [spatial, voxel_tool]
import core, models / [states, bots, colors, units]
const ChunkSize = vec3(16, 16, 16)

include "build_code_template.nim.nimf"

const default_color = action_colors[blue]
const empty_zid: ZID = 0

var
  current_build* {.threadvar.}: Build
  previous_build* {.threadvar.}: Build
  dont_join*: bool
  skip_point = vec3()
  last_point: Vector3
  draw_normal = vec3()

proc draw*(self: Build, position: Vector3, voxel: VoxelInfo) {.gcsafe.}

method code_template*(self: Build, imports: string): string =
  result = build_code_template(self.script_ctx.script, imports)

proc buffer(position: Vector3): Vector3 = (position / ChunkSize).floor

proc contains*(self: Build, position: Vector3): bool =
  let buf = position.buffer
  result = buf in self.chunks and position in self.chunks[buf]

proc voxel_info*(self: Build, position: Vector3): VoxelInfo =
  self.chunks[position.buffer][position]

proc find_voxel*(self: Build, position: Vector3): Option[VoxelInfo] =
  let buf = position.buffer
  result = if buf in self:
    some(self.chunks[buf][position])
  else:
    none(VoxelInfo)

proc find_first*(units: ZenSeq[Unit], positions: open_array[Vector3]): Build =
  for unit in units:
    if unit of Build:
      let unit = Build(unit)
      let offset = vec3().global_from(unit)
      for position in positions:
        var loc = position - offset
        if loc in unit:
          var info = unit.chunks[loc.buffer][loc]
          if info.kind != Hole and info.color != action_colors[eraser]:
            return unit
      let first = unit.units.find_first(positions)
      if ?first:
        return first

proc add_build(self, source: Build) =
  dont_join = true
  for chunk_id, chunk in source.chunks:
    for position, info in chunk:
      var position = source.to_global(position)
      position = self.to_local(position)
      self.draw(position, info)

  if source.parent.is_nil:
    state.units -= source
  else:
    source.parent.units -= source
  dont_join = false

proc maybe_join_previous_build(self: Build, position: Vector3, voxel: VoxelInfo) =
  if self != current_build:
    previous_build = current_build
    current_build = self

  if ?previous_build and previous_build != self:
    var partner = previous_build
    let root = previous_build.find_root
    if root of Build:
      partner = Build(root)

    if partner != self:
      for position in self.to_global(position).surrounding:
        if partner.to_local(position) in partner:
          var source, dest: Build
          if partner.code.value.strip == "":
            source = partner
            dest = self
          elif self.code.value.strip == "":
            source = self
            dest = partner

          if ?source and ?dest:
            dest.add_build(source)
            current_build = dest
            return

proc expand_bounds_to_chunk(self: Build, chunk_id: Vector3) =
  let range = chunk_id * ChunkSize
  let min = range - ChunkSize
  let max = range + ChunkSize
  if max notin self.bounds.value:
    self.bounds.value = self.bounds.value.expand(max)
  if min notin self.bounds.value:
    self.bounds.value = self.bounds.value.expand(min)

proc reset_bounds*(self: Build) =
  self.bounds.value = init_aabb(vec3(), vec3(-1, -1, -1))

  for chunk_id, chunk in self.chunks:
    self.expand_bounds_to_chunk(chunk_id)

proc add_voxel(self: Build, position: Vector3, voxel: VoxelInfo) =
  let buffer = position.buffer

  if buffer notin self.chunks:
    self.chunks[buffer] = Chunk.init
    self.expand_bounds_to_chunk(buffer)

  self.chunks[buffer][position] = voxel

proc del_voxel(self: Build, position: Vector3) =
  let buffer = position.buffer
  self.chunks[buffer].del position

proc restore_edits*(self: Build) =
  if self.id in self.shared.value.edits:
    for loc, info in self.shared.value.edits[self.id]:
      assert info.kind in [Manual, Hole]
      if info.kind != Hole:
        self.add_voxel(loc, info)
      else:
        let buffer = loc.buffer
        if buffer in self.chunks and loc in self.chunks[buffer]:
          var info = info
          info.color = self.chunks[buffer][loc].color
          var locations = self.shared.value.edits[self.id]
          locations[loc] = info
          self.shared.value.edits[self.id] = locations
          self.chunks[buffer].del loc

proc draw*(self: Build, position: Vector3, voxel: VoxelInfo) {.gcsafe.} =
  if voxel.kind == Computed:
    if position in self.shared.value.edits[self.id]:
      var edit = self.shared.value.edits[self.id][position]
      if edit.kind == Hole:
        # We're using color as a flag to indicate that the hole is active
        edit.color = voxel.color
        var locations = self.shared.value.edits[self.id]
        locations[position] = edit
        self.shared.value.edits[self.id] = locations
        return
      elif edit.kind == Manual and edit.color == voxel.color:
        var locations = self.shared.value.edits[self.id]
        locations.del position
        self.shared.value.edits[self.id] = locations
    elif ?self.clone_of and position in self.clone_of.shared.value.edits[self.clone_of.id] and
         self.clone_of.shared.value.edits[self.clone_of.id][position].kind == Hole:
      return
    else:
      self.add_voxel(position, voxel)

  else:
    state.dirty_units.incl self.find_root
    if self.id notin self.shared.value.edits:
      self.shared.value.edits[self.id] = init_table[Vector3, VoxelInfo]()
    var voxel = voxel
    if voxel.kind == Hole and position in self:
      voxel.color = self.voxel_info(position).color
    var locations = self.shared.value.edits[self.id]
    locations[position] = voxel
    self.shared.value.edits[self.id] = locations
    if voxel.kind != Hole:
      self.add_voxel(position, voxel)
    else:
      self.del_voxel(position)

  if position == vec3(0, 0, 0) and voxel.kind != Computed:
    self.start_color = voxel.color

  if not dont_join and voxel.kind == Manual:
    self.maybe_join_previous_build(position, voxel)

proc drop_block(self: Build) =
  if self.drawing:
    var p = self.draw_transform.origin.snapped(vec3(1, 1, 1))
    self.draw(p, (Computed, self.color.value))

proc remove(self: Build) =
  if state.tool.value notin {CodeMode, PlaceBot}:
    state.skip_block_paint = true
    draw_normal = self.target_normal
    let point = self.target_point - self.target_normal - (self.target_normal.inverse_normalized * 0.5)
    skip_point = vec3()
    last_point = self.target_point
    self.draw(point, (Hole, action_colors[eraser]))

    if self.units.len == 0 and not self.chunks.any_it(it.value.any_it(it.value.color != action_colors[eraser])):
      if self.parent.is_nil:
        state.units -= self
      else:
        self.parent.units -= self

proc fire(self: Build) =
  let global_point = self.to_global(self.target_point)
  if state.tool.value notin {CodeMode, PlaceBot}:
    state.skip_block_paint = true
    draw_normal = self.target_normal
    let point = (self.target_point + (self.target_normal * 0.5)).floor
    skip_point = self.target_point + self.target_normal
    last_point = self.target_point
    self.draw(point, (Manual, state.selected_color))
  elif state.tool.value == PlaceBot and EditorVisible in state.flags and
    state.bot_at(global_point).is_nil:

    let transform = Transform.init(origin = global_point)
    state.units += Bot.init(transform = transform)
  elif state.tool.value == CodeMode:
    let root = self.find_root(true)
    state.open_unit.value = root

proc is_moving(self: Build, move_mode: int): bool =
  move_mode == 2

method on_begin_move*(self: Build, direction: Vector3, steps: float, move_mode: int): Callback =
  let move = self.is_moving(move_mode)
  if move:
    let steps = steps.float
    var duration = 0.0
    let
      moving = self.transform.basis.xform(direction) / self.scale.value
      finish = self.transform.origin + moving * steps
      finish_time = 1.0 / self.speed * steps

    result = proc(delta: float): TaskStates =
      duration += delta
      if duration >= finish_time:
        self.transform.origin = finish
        return Done
      else:
        self.transform.origin = self.transform.origin + (moving * self.speed * delta)
        return Running
  else:
    if self.speed == 0:
      self.voxels_per_frame = float.high
    else:
      self.voxels_remaining_this_frame = self.speed
      self.voxels_per_frame = self.speed
    var count = 0

    result = proc(delta: float): TaskStates =
      while count.float < steps and self.voxels_remaining_this_frame >= 1 and
          get_mono_time() < state.timeout_frame_at:

        if steps < 1:
          self.draw_transform.value =
            self.draw_transform.value.translated(direction * steps)
        else:
          self.draw_transform.value =
            self.draw_transform.value.translated(direction)
        inc count
        self.voxels_remaining_this_frame -= 1
        self.drop_block()

      if count.float >= steps:
        NextTask
      else:
        Running

method on_begin_turn*(self: Build, axis: Vector3, degrees: float, lean: bool, move_mode: int): Callback =
  let map = if lean:
    {LEFT: BACK, RIGHT: FORWARD, BACK: RIGHT, FORWARD: LEFT}.to_table
  else:
    {LEFT: UP, RIGHT: DOWN, UP: RIGHT, DOWN: LEFT}.to_table
  let axis = map[axis]
  let move = self.is_moving(move_mode)
  if move:
    self.voxels_per_frame = 0
    var duration = 0.0
    let axis = self.transform.basis.orthonormalized.xform(axis)
    let scale = self.scale.value
    var final_transform = self.transform.value
    final_transform.basis = final_transform.basis.rotated(axis, deg_to_rad(degrees))
                                           .orthonormalized.scaled(vec3(scale, scale, scale))

    result = proc(delta: float): TaskStates =
      duration += delta
      self.transform.basis = self.transform.basis.rotated(axis, deg_to_rad(degrees * delta * self.speed))
      if duration <= 1.0 / self.speed:
        Running
      else:
        self.transform.value = final_transform
        Done
  else:
    let axis = self.draw_transform.basis.xform(axis)
    self.draw_transform.basis = self.draw_transform.basis.rotated(axis, deg_to_rad(degrees))
    self.draw_transform.value = self.draw_transform.value.orthonormalized()

proc reset_state*(self: Build) =
  self.draw_transform.value = Transform.init
  self.transform.value = self.start_transform

method reset*(self: Build) =
  debug "resetting build", id = self.id
  self.transform.value = self.start_transform
  self.color.value = self.start_color
  self.speed = 1
  self.scale.value = 1
  self.flags += Visible
  self.reset_state()
  let chunks = self.chunks.value
  for chunk_id, chunk in chunks:
    let voxels = chunk.value
    for vec, info in voxels:
      if info.kind == Computed:
        self.chunks[chunk_id].del(vec)
        if self.chunks[chunk_id].len == 0:
          self.chunks.del(chunk_id)
  self.units.clear()
  self.draw(vec3(), (Computed, self.start_color))

method ensure_visible*(self: Build) =
  # It's possible for a build to have no blocks of its own if has children with blocks. However, if the script
  # fails or is changed to remove its children, the unit will still exist but will have no presence in the world,
  # and is therefor impossible to select or modify. In that case we want to draw a single block.
  if self.units.len == 0 and not self.chunks.any_it(it.value.any_it(it.value.color != action_colors[eraser])):
    let color = if self.start_color == action_colors[eraser]:
      action_colors[blue]
    else:
      self.start_color
    self.draw(vec3(), (Computed, color))

method main_thread_init*(self: Build) {.gcsafe.} =
  self.flags.watch:
    if Hover.added and state.tool.value == CodeMode:
      if Playing notin state.flags:
        let root = self.find_root(true)
        root.walk_tree proc(unit: Unit) = unit.flags += Highlight
    elif Hover.removed:
      let root = self.find_root(true)
      root.walk_tree proc(unit: Unit) = unit.flags -= Highlight
    if TargetMoved.touched:
      let length = (self.target_point * self.target_normal - last_point * self.target_normal).length
      if state.skip_block_paint:
        state.skip_block_paint = false
      elif state.draw_unit_id == self.id and self.target_normal == draw_normal and
          length <= 5 and self.target_point != skip_point:

        if SecondaryDown in state.flags:
          self.remove
        elif PrimaryDown in state.flags:
          self.fire

    if change.item in {TargetMoved, Hover} and state.tool.value == PlaceBot:
      if self.target_normal == UP:
        state.push_flag BlockTargetVisible
      else:
        state.pop_flag BlockTargetVisible

  state.flags.watch:
    if Hover in self.flags:
      if PrimaryDown.added:
        state.draw_unit_id = self.id
        self.fire
      elif SecondaryDown.added:
        state.draw_unit_id = self.id
        self.remove
    if PrimaryDown.removed or SecondaryDown.removed:
      state.draw_unit_id = ""
      last_point = vec3()

proc draw_voxel(self: Build, location: Vector3, color: Color) =
  assert self.voxel_tool.value[] != nil
  self.voxel_tool.value[].set_voxel(location, ord color.action_index)

proc draw_block(self: Build, voxels: Chunk) =
  for loc, info in voxels:
    self.draw_voxel(loc, info.color)

proc track_chunk(self: Build, chunk_id: Vector3) =
  if chunk_id in self.chunks:
    self.draw_block(self.chunks[chunk_id])
    self.active_chunks[chunk_id] = self.chunks[chunk_id].watch:
      # `and not modified` isn't required, but the block will be replaced on the next iteration anyway.
      if removed and not modified:
        self.draw_voxel(change.item.key, action_colors[eraser])
      elif added:
        self.draw_voxel(change.item.key, change.item.value.color)
    self.draw_block(self.chunks[chunk_id])
  else:
    self.active_chunks[chunk_id] = empty_zid

proc worker_thread_init(self: Build) =
  self.last_loaded_chunk_id.changes:
    if added:
      self.track_chunk(change.item)

  self.last_unloaded_chunk_id.changes:
    if added:
      let chunk_id = change.item
      let zid = self.active_chunks[chunk_id]
      if zid != empty_zid:
        self.chunks[chunk_id].untrack(zid)
      self.active_chunks.del(chunk_id)

  self.chunks.changes:
    let id = change.item.key
    if id in self.active_chunks:
      if added:
        self.track_chunk(change.item.key)
      elif removed:
        self.active_chunks[id] = empty_zid

proc init*(_: type Build,
    id = "build_" & generate_id(), transform = Transform.init,
    color = default_color, clone_of: Unit = nil, global = true,
    bot_collisions = true, parent: Unit = nil): Build =

  var self = Build(
    id: id,
    chunks: ZenTable[Vector3, Chunk].init(track_children = false),
    start_transform: transform,
    draw_transform: Zen.init(Transform.init),
    start_color: color,
    drawing: true,
    bounds: Zen.init(init_aabb(vec3(), vec3(-1, -1, -1))),
    speed: 1.0,
    clone_of: clone_of,
    bot_collisions: bot_collisions,
    frame_created: state.frame_count,
    last_loaded_chunk_id: ZenValue[Vector3].init,
    last_unloaded_chunk_id: ZenValue[Vector3].init,
    voxel_tool: ZenValue[ptr VoxelTool].init
  )

  self.init_unit
  if clone_of == nil:
    state.dirty_units.incl self

  if global: self.flags += Global
  self.flags += Visible
  self.reset()
  self.worker_thread_init()
  result = self

method on_collision*(self: Build, partner: Model, normal: Vector3) =
  self.collisions.add (partner, normal)
  if ?self.script_ctx:
    self.script_ctx.timer = get_mono_time()

method off_collision*(self: Build, partner: Model) =
  self.collisions = collect:
    for collision in self.collisions:
      if collision.model != partner:
        collision

  if ?self.script_ctx:
    self.script_ctx.timer = get_mono_time()

method clone*(self: Build, clone_to: Unit, id: string): Unit =
  var transform = clone_to.transform.value
  var global = true
  if clone_to of Build:
    transform = Build(clone_to).draw_transform.value
    global = false

  # we need this off for Potato Zombies, but on for the
  # tutorials. Make it configurable somehow.
  let bot_collisions = true #not (clone_to of Bot)
  let clone = Build.init(id = id, transform = transform, clone_of = self, global = global, parent = clone_to,
                         color = self.start_color, bot_collisions = bot_collisions)

  for loc, info in self.shared.value.edits[self.id]:
    if info.kind != Hole and loc notin clone.shared.value.edits[clone.id]:
      clone.add_voxel(loc, info)

  clone.restore_edits
  result = clone

when is_main_module:
  import unittest, states
  type Node = ref object of RootObj

  var b = Build.init

  b.draw vec3(1, 1, 1), (Computed, Color())
  check vec3(1, 1, 1) in b.chunks[vec3(0, 0, 0)]
  b.draw vec3(17, 17, 17), (Computed, Color())
  check vec3(17, 17, 17) in b.chunks[vec3(1, 1, 1)]
  var c = Build.init(transform = Transform(origin: vec3(5, 5, 5)))
  c.parent = b

  c.draw vec3(14, 14, 14), (Manual, Color())
  c.flags += Hover
