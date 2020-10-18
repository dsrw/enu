import ../godotapi / [mesh, voxel_terrain, voxel_tool, voxel, voxel_library, spatial_material],
       godot, sets, tables, hashes,
       globals, core

type
  DrawMode* = enum
    GridMode, VoxelMode
  Buffers = Table[Vector3, VoxTable]
const MAX_MATERIALS = 512

gdobj Terrain of VoxelTerrain:
  var
    targeted_voxel: Vector3
    current_normal: Vector3
    draw_plane: Vector3
    current_point: Vector3
    voxel_tool: VoxelTool
    buffers: Buffers
    offset_buffers: Table[int, Buffers]
    visible_buffers: HashSet[Vector3]
    loading_buffers: seq[Vector3]
    highlighted_offset = -1
    voxel_count:int
    # NOTE Voxels on the edges of buffers behave strangely. They often can't be drawn with
    # voxel_tool, even if their buffer is visible. I'm not sure if this is a bug.
    # To work around this, we add voxels that can't be displayed with their buffer
    # (using an is_area_editable check) to a `lost_voxels` list, that we just try on each
    # buffer load until we can draw them.
    #
    # There's probably a better way to do this, or to avoid the behavior (bug?)
    # all together.
    lost_voxels: Table[Vector3, seq[Vox]]

  proc prep_voxels_and_materials() =
    # to do highlighting, we rely on each builder having its own
    # materials within the terrain.
    # This duplicates the voxels in the library so we have a pool with different materials.
    let l = self.voxel_library
    self.voxel_count = l.voxel_count.int

    for i in 0..<l.voxel_count:
      var m = self.get_material(i).as(SpatialMaterial)
      if not m.is_nil:
        m.emission_enabled = true
        m.emission_energy = 0.0
        m.emission = m.albedo_color

    l.voxel_count = MAX_MATERIALS
    for i in self.voxel_count..<MAX_MATERIALS:
      let idx = (i - 1) mod (self.voxel_count - 1)
      var m = self.get_material(idx).as(SpatialMaterial)
      assert not m.is_nil

      m = m.duplicate().as(SpatialMaterial)
      m.emission_enabled = true
      m.emission_energy = 0.0
      m.emission = m.albedo_color
      self.set_material(i - 1, m)

      let v = l.create_voxel(i, "voxel-" & $i)
      v.material_id = i - 1
      v.transparent = false
      v.geometry_type = GEOMETRY_CUBE
    l.bake()

  method ready*() =
    self.bind_signals(self, w"""
      target_in target_out target_move
      target_fire target_remove block_loaded
      block_unloaded""")
    self.prep_voxels_and_materials()

  proc in_view(loc: Vector3, log = false): bool =
    self.voxel_tool.is_area_editable(init_aabb(loc, vec3(1,1,1)))

  proc set_voxel(loc: Vector3, index, offset: int) =
    let idx = if index == 0: 0 else:
      offset * (self.voxel_count - 1) + index
    self.voxel_tool.set_voxel(loc, idx)

  proc draw*(x, y, z: float, index, offset: int, keep = false) =
    if self.voxel_tool.is_nil:
      self.voxel_tool = self.get_voxel_tool()

    let
      loc = vec3(x, y, z)
      blk = self.voxel_to_block(loc)
      vox: Vox = (loc, (index, offset, keep))

    if keep:
      self.trigger("terrain_block_added", offset, loc, index)

    if self.in_view(loc):
      self.set_voxel(loc, index, offset)
    elif blk in self.visible_buffers:
      self.lost_voxels.mget_or_put(blk, @[])
                      .add vox
    if index == 0:
      self.del_voxel(blk, vox)
    else:
      self.add_voxel(blk, vox)

  proc draw*(loc: Vector3, index, offset: int, keep = false) =
    self.draw(loc.x, loc.y, loc.z, index, offset, keep)

  proc find_targeted_voxel(point, normal: Vector3): Vector3 =
    let diffed = (vec3(1, 1, 1) + normal) * 0.5
    result = point - diffed

  proc get_vox*(point: Vector3): Option[VoxData] =
    let blk = self.voxel_to_block(point)
    if blk in self.buffers:
      let buf = self.buffers[blk]
      if point in buf:
        result = some(buf[point])

  method process*(delta: float) =
    if self.loading_buffers.len > 0:
      let lost_voxels = self.lost_voxels
      for blk, voxels in lost_voxels:
        var remaining_voxels: seq[Vox]
        for (loc, data) in voxels:
          self.try_draw(loc, data.index, data.offset, data.keep, remaining_voxels)
        if remaining_voxels.len > 0:
          self.lost_voxels[blk] = remaining_voxels
        else:
          self.lost_voxels.del(blk)

      for blk in self.loading_buffers:
        if blk in self.buffers:
          let voxels = self.buffers[blk]
          for loc, data in voxels:
            if not self.try_draw(loc, data.index, data.offset):
              self.lost_voxels.mget_or_put(blk, @[])
                              .add (loc, data)

      self.loading_buffers = @[]

  proc try_draw(loc: Vector3, idx, offset: int): bool =
    result = if self.in_view(loc):
      self.set_voxel(loc, idx, offset)
      true
    else:
      false

  proc try_draw(loc: Vector3, idx, offset: int, keep = false, buffers: var seq[Vox]) =
    if not self.try_draw(loc, idx, offset):
      buffers.add (loc, (idx, offset, keep))

  proc add_voxel(blk: Vector3, vox: Vox) =
    let (loc, data) = vox
    if data.offset notin self.offset_buffers:
      self.offset_buffers[data.offset] = Buffers()
    if blk notin self.offset_buffers[data.offset]:
      self.offset_buffers[data.offset][blk] = VoxTable()
    if blk notin self.buffers:
      self.buffers[blk] = VoxTable()

    self.offset_buffers[data.offset][blk][loc] = data
    self.buffers[blk][loc] = data

  proc del_voxel(blk: Vector3, vox: Vox) =
    let (loc, data) = vox
    self.offset_buffers[data.offset][blk].del loc
    self.buffers[blk].del loc

    if self.offset_buffers[data.offset][blk].len == 0:
      self.offset_buffers[data.offset].del(blk)
    if self.offset_buffers[data.offset].len == 0:
      self.offset_buffers.del(data.offset)
    if self.buffers[blk].len == 0:
      self.buffers.del(blk)

  proc export_data*(offset: int, location: Vector3): seq[Vox] =
    for blk, table in self.offset_buffers[offset]:
      for loc, data in table:
        result.add (loc - location, data)

  proc import_data*(bulk_data: seq[Vox], offset: int, location: Vector3) =
    for (loc, data) in bulk_data:
      self.draw(loc + location, data.index, offset, data.keep)

  proc clear*(offset: int, all = false) =
    for blk in self.visible_buffers:
      if blk in self.buffers:
        for loc, data in self.buffers[blk]:
          if (all or not data.keep) and offset == data.offset:
            self.voxel_tool.set_voxel(loc, 0)

    var offset_buffers: Buffers
    for blk, table in self.offset_buffers[offset]:
      for loc, data in table:
        if not all and data.keep:
          if blk notin offset_buffers:
            offset_buffers[blk] = VoxTable()
          offset_buffers[blk][loc] = data
        else:
          self.buffers[blk].del(loc)
    self.offset_buffers[offset] = offset_buffers

    let lost_voxels = self.lost_voxels
    for blk, voxes in lost_voxels:
      self.lost_voxels[blk] = voxes.filter_it:
        it.data.offset != offset or it.data.keep and not all

  proc highlight() =
    let
      offset = self.highlighted_offset
      min = offset * (self.voxel_count - 1)
      max = min + self.voxel_count - 2
    for i in min..max:
      let m = self.get_material(i).as(SpatialMaterial)
      if not m.is_nil:
        m.emission_energy = 15.0

  proc deselect() =
    for i in 0..<MAX_MATERIALS:
      let m = self.get_material(i).as(SpatialMaterial)
      if not m.is_nil:
        m.emission_energy = 0.0

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

    if tool_mode == CodeMode:
      let vox = self.get_vox(targeted_voxel)
      if vox:
        let offset = vox.get.offset
        if offset != self.highlighted_offset:
          self.highlighted_offset = offset
          self.deselect()
          self.highlight()

    if fire_down and tool_mode == BlockMode:
      let plane = point * normal
      if self.draw_plane == plane:
        self.on_target_fire()
    elif remove_down and tool_mode == BlockMode:
      let plane = point * normal
      if self.draw_plane == plane:
        self.on_target_remove()
    elif not remove_down and not fire_down:
      self.draw_plane = vec3()

  method on_target_out() =
    self.highlighted_offset = -1
    self.deselect()
    if tool_mode == ObjectMode:
      game_node.trigger("show_target")

  method on_target_in() =
    if tool_mode == ObjectMode:
      game_node.trigger("hide_target")

  method on_target_fire() =
    let vox = self.get_vox(self.targeted_voxel)
    if vox:
      if tool_mode == BlockMode:
        let point = self.targeted_voxel + self.current_normal
        self.draw(point, action_index, vox.get.offset, true)
        self.draw_plane = self.current_point * self.current_normal

      if tool_mode == CodeMode:
        self.trigger("block_selected", vox.get.offset)
        self.deselect()

  method on_target_remove() =
    let loc = self.targeted_voxel
    if tool_mode == BlockMode:
      let data = self.get_vox(loc)
      if data:
        let data = data.get
        self.draw(loc, 0, data.offset)
        if data.offset notin self.offset_buffers:
          self.trigger("last_block_deleted", data.offset)
        else:
          self.trigger("terrain_block_removed", data.offset, loc, data.index, data.keep)
      self.draw_plane = self.current_point * self.current_normal
