import ../godotapi / [mesh, voxel_terrain, voxel_tool, spatial_material],
       godot, sets, tables, hashes,
       globals, core

type
  DrawMode* = enum
    GridMode, VoxelMode

type
  Voxel = tuple[location: Vector3, index: int]

# We use loc for the hash so we can be sure we only have one per location
proc hash(voxel: Voxel): Hash = voxel.location.hash
proc `==`(voxel, other: Voxel): bool = voxel.location == other.location

gdobj Terrain of VoxelTerrain:
  var
    id* {.gdExport} = "none"
    targeted_voxel: Vector3
    current_normal: Vector3
    draw_plane: Vector3
    current_point: Vector3
    voxel_tool: VoxelTool
    buffer: Table[Vector3, HashSet[Voxel]]
    visible_buffers: HashSet[Vector3]
    loading_buffers: seq[Vector3]

    # XXX Voxels on the edges of buffers behave strangely. They often can't be drawn with
    # voxel_tool, even if their buffer is visible. I'm not sure if this is a bug.
    # To work around this, we add voxels that can't be displayed with their buffer
    # (using an is_area_editable check) to a `lost_voxels` list, that we just try on each
    # buffer load until we can draw them.
    #
    # There's probably a better way to do this, or to avoid the behavior (bug?)
    # all together.
    lost_voxels: Table[Vector3, seq[Voxel]]

  proc init*() =
    for i in 0..<8:
      var m = self.get_material(i).as(SpatialMaterial)
      if not m.is_nil:
        m = m.duplicate().as(SpatialMaterial)
        m.emission_enabled = true
        m.emission_energy = 0.0
        m.emission = m.albedo_color
        self.set_material(i, m)

  method ready*() =
    self.bind_signals(self, ["target_in", "target_out", "target_move",
                             "target_fire", "target_remove", "block_loaded",
                             "block_unloaded"])

  proc in_view(loc: Vector3, log = false): bool =
    self.voxel_tool.is_area_editable(init_aabb(loc, vec3(1,1,1)))

  proc draw*(x, y, z: float, index: int) =
    if self.voxel_tool.is_nil:
      self.voxel_tool = self.get_voxel_tool()

    let
      loc = vec3(x, y, z)
      blk = self.voxel_to_block(loc)

    if self.in_view(loc):
      self.voxel_tool.set_voxel(loc, index)
    elif blk in self.visible_buffers:
      self.lost_voxels.mget_or_put(blk, @[])
                      .add (loc, index)
    if blk notin self.buffer:
      self.buffer[blk] = init_hash_set[Voxel]()
    if index == 0:
      self.buffer[blk].excl (loc, index)
    else:
      self.buffer[blk].incl (loc, index)

  proc draw*(loc: Vector3, index: int) =
    self.draw(loc.x, loc.y, loc.z, index)

  proc find_targeted_voxel(point, normal: Vector3): Vector3 =
    let diffed = (vec3(1, 1, 1) + normal) * 0.5
    result = point - diffed

  proc highlight() =
    for i in 0..<8:
      let m = self.get_material(i).as(SpatialMaterial)
      if not m.is_nil:
        m.emission_energy = 15.0

  proc deselect() =
    for i in 0..<8:
      let m = self.get_material(i).as(SpatialMaterial)
      if not m.is_nil:
        m.emission_energy = 0.0

  method process*(delta: float) =
    if self.loading_buffers.len > 0:
      let lost_voxels = self.lost_voxels
      for blk, voxels in lost_voxels:
        var remaining_voxels: seq[Voxel]
        for (loc, idx) in voxels:
          self.try_draw(loc, idx, remaining_voxels)
        if remaining_voxels.len > 0:
          self.lost_voxels[blk] = remaining_voxels
        else:
          self.lost_voxels.del(blk)

      for blk in self.loading_buffers:
        if blk in self.buffer:
          let voxels = self.buffer[blk]
          for (loc, idx) in voxels:
            if not self.try_draw(loc, idx):
              self.lost_voxels.mget_or_put(blk, @[]).add (loc, idx)

      self.loading_buffers = @[]

  proc try_draw(loc: Vector3, idx: int): bool =
    result = if self.in_view(loc):
      self.voxel_tool.set_voxel(loc, idx)
      true
    else:
      false

  proc try_draw(loc: Vector3, idx: int, buffer: var seq[Voxel]) =
    if not self.try_draw(loc, idx):
      buffer.add (loc, idx)

  proc clear*() =
    for blk in self.visible_buffers:
      if blk in self.buffer:
        for (loc, idx) in self.buffer[blk]:
          self.voxel_tool.set_voxel(loc, 0)
    self.buffer.clear()
    self.lost_voxels.clear()

  method on_block_loaded(location: Vector3, buffer: VoxelBuffer) =
    self.loading_buffers.add location
    self.visible_buffers.incl location

  method on_block_unloaded(location: Vector3, buffer: VoxelBuffer) =
    self.visible_buffers.excl location
    self.lost_voxels.del location

  method on_target_move(point, normal: Vector3) =
    let
      prev_point = self.current_point
      prev_normal = self.current_normal
    self.current_point = point
    self.current_normal = normal
    let targeted_voxel = self.find_targeted_voxel(point, normal)
    if targeted_voxel != self.targeted_voxel:
      self.targeted_voxel = targeted_voxel

    if fire_down and tool_mode == BlockMode:
      let plane = point * normal
      if self.draw_plane == plane:
        self.on_target_fire()
    if remove_down and tool_mode == BlockMode:
      let plane = point * normal
      if self.draw_plane == plane:
        self.on_target_remove()
    elif not remove_down and not fire_down:
      self.draw_plane = vec3()

  method on_target_out() =
    self.deselect()
    if tool_mode == ObjectMode:
      game_node.trigger("show_target")

  method on_target_in() =
    if tool_mode == CodeMode:
      self.highlight()
    elif tool_mode == ObjectMode:
      game_node.trigger("hide_target")

  method on_target_fire() =
    if tool_mode == BlockMode:
      self.draw(self.targeted_voxel + self.current_normal, action_index)
      self.draw_plane = self.current_point * self.current_normal

    if tool_mode == CodeMode:
      self.trigger("selected")
      self.deselect()

  method on_target_remove() =
    if tool_mode == BlockMode:
      self.draw(self.targeted_voxel, 0)
      self.draw_plane = self.current_point * self.current_normal
