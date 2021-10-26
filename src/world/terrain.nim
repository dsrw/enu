import godotapi / [mesh, voxel_terrain, resource_loader, voxel_mesher_blocky, voxel_tool, voxel, voxel_library, shader_material]
import godot, sets, tables, hashes
import globals, core, player/player, math

type
  Buffers = Table[Vector3, VoxTable]

const
  highlight_energy = 1.0
  default_energy = 0.1

proc create_bot(transform: Transform, parent: Node, up_axis = UP)

gdobj Terrain of VoxelTerrain:
  var
    targeted_voxel: Vector3
    current_normal: Vector3
    draw_plane: Vector3
    current_point: Vector3
    voxel_tool: VoxelTool
    buffers: Buffers
    visible_buffers: HashSet[Vector3]
    loading_buffers: seq[Vector3]
    highlighted = false
    painting, erasing = false
    library: VoxelLibrary
    # NOTE Voxels on the edges of buffers behave strangely. They often can't be drawn with
    # voxel_tool, even if their buffer is visible. I'm not sure if this is a bug.
    # To work around this, we add voxels that can't be displayed with their buffer
    # (using an is_area_editable check) to a `lost_voxels` list, that we just try on each
    # buffer load until we can draw them.
    #
    # There's probably a better way to do this, or to avoid the behavior (bug?)
    # all together.
    lost_voxels: Table[Vector3, seq[Vox]]
    root_terrain*: Terrain

  proc `highlighted=`*(val: bool) =
    self.highlighted = val
    var energy = if val: highlight_energy else: default_energy
    for i in 0..<self.library.voxel_count.int:
      let m = self.get_material(i).as(ShaderMaterial)
      if not m.is_nil:
        m.set_shader_param("emission_energy", energy.to_variant)

  proc highlight*: bool = self.highlighted

  proc clone_materials =
    let count = self.mesher.as(VoxelMesherBlocky).library.voxel_count
    for i in 0..int.high:
      let m = self.get_material(i)
      if m.is_nil:
        break
      else:
        let m = m.duplicate.as(ShaderMaterial)
        m.set_shader_param("emission_energy", default_energy.to_variant)
        self.set_material(i, m)

  method ready*() =
    self.bind_signals(self, w"""
      target_in target_out target_move
      target_fire target_remove block_loaded
      block_unloaded tree_exiting""")
    self.bind_signals("mouse_released")
    self.library = self.mesher.as(VoxelMesherBlocky).library
    self.clone_materials()

  proc in_view(loc: Vector3, log = false): bool =
    self.voxel_tool.is_area_editable(init_aabb(loc, vec3(1,1,1)))

  proc set_voxel(loc: Vector3, index: int) =
    self.voxel_tool.set_voxel(loc, index)

  proc set_energy*(color: int, energy: float) =
    let index = color - 1
    let m = self.get_material(index).as(ShaderMaterial)
    if not m.is_nil:
      m.set_shader_param("emission_energy", energy.to_variant)
    else:
      echo "can't find material"

  proc draw*(x, y, z: float, index: int, keep = false, trigger = true) =
    if self.voxel_tool.is_nil:
      self.voxel_tool = self.get_voxel_tool()

    let
      loc = vec3(x, y, z)
      blk = self.voxel_to_data_block(loc)
      vox: Vox = (loc, (index, keep))

    while not self.bounds.contains(loc):
      self.bounds = self.bounds.grow(16)

    if self.in_view(loc):
      self.set_voxel(loc, index)
    elif blk in self.visible_buffers:
      self.lost_voxels.mget_or_put(blk, @[])
                      .add vox
    if index == 0:
      self.del_voxel(blk, vox)
    else:
      self.add_voxel(blk, vox)

    if keep and trigger:
      self.trigger("terrain_block_added", loc, index)

  proc draw*(loc: Vector3, index: int, keep = false, trigger = true) =
    self.draw(loc.x, loc.y, loc.z, index, keep, trigger)

  proc find_targeted_voxel(point, normal: Vector3): Vector3 =
    let diffed = (vec3(1, 1, 1) + normal) * 0.5
    result = point - diffed

  proc get_vox*(point: Vector3): Option[VoxData] =
    let blk = self.voxel_to_data_block(point)
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
          self.try_draw(loc, data.index, data.keep, remaining_voxels)
        if remaining_voxels.len > 0:
          self.lost_voxels[blk] = remaining_voxels
        else:
          self.lost_voxels.del(blk)

      for blk in self.loading_buffers:
        if blk in self.buffers:
          let voxels = self.buffers[blk]
          for loc, data in voxels:
            if not self.try_draw(loc, data.index):
              self.lost_voxels.mget_or_put(blk, @[])
                              .add (loc, data)

      self.loading_buffers = @[]

  proc try_draw(loc: Vector3, idx: int): bool =
    result = if self.in_view(loc):
      self.set_voxel(loc, idx)
      true
    else:
      false

  proc try_draw(loc: Vector3, idx: int, keep = false, buffers: var seq[Vox]) =
    if not self.try_draw(loc, idx):
      buffers.add (loc, (idx, keep))

  proc add_voxel(blk: Vector3, vox: Vox) =
    let (loc, data) = vox
    if blk notin self.buffers:
      self.buffers[blk] = VoxTable()

    self.buffers[blk][loc] = data

  proc del_voxel(blk: Vector3, vox: Vox) =
    let (loc, data) = vox
    self.buffers[blk].del loc

    if self.buffers[blk].len == 0:
      self.buffers.del(blk)

  proc export_data*(): seq[Vox] =
    for blk, table in self.buffers:
      for loc, data in table:
        result.add (loc, data)

  proc clear*(all = false) =
    for blk in self.visible_buffers:
      if blk in self.buffers:
        for loc, data in self.buffers[blk]:
          if (all or not data.keep):
            self.voxel_tool.set_voxel(loc, 0)

    for blk, table in self.buffers:
      for loc, data in table:
        if all or not data.keep:
          self.buffers[blk].del(loc)

    let lost_voxels = self.lost_voxels
    for blk, voxes in lost_voxels:
      self.lost_voxels[blk] = voxes.filter_it:
        it.data.keep and not all

  method on_block_loaded(location: Vector3) =
    self.loading_buffers.add location
    self.visible_buffers.incl location

  method on_block_unloaded(location: Vector3) =
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

    if not self.highlighted and tool_mode == CodeMode:
      self.get_parent.trigger("highlight", true)

    if self.painting and tool_mode == BlockMode:
      let plane = point * normal
      if self.draw_plane == plane:
        self.on_target_fire()
    elif self.erasing and tool_mode == BlockMode:
      let plane = point * normal
      if self.draw_plane == plane:
        self.on_target_remove()

  method on_target_out() =
    self.get_parent.trigger("deselect", true)
    if tool_mode == ObjectMode:
      game_node.trigger("show_target")

  method on_target_in() =
    if tool_mode == CodeMode:
      self.get_parent.trigger("highlight", true)
    if tool_mode == ObjectMode:
      game_node.trigger("hide_target")

  method on_mouse_released() =
    self.painting = false
    self.erasing = false
    self.draw_plane = vec3()

  method on_tree_exiting() =
    game_node.trigger("collider_exiting", self)

  method on_target_fire() =
    let vox = self.get_vox(self.targeted_voxel)
    if vox:
      if tool_mode == BlockMode:
        self.painting = true
        let point = self.targeted_voxel + self.current_normal
        if not self.root_terrain.is_nil:
          let t = self.get_parent().as(Spatial).translation #+ vec3(2,0,1)
          self.root_terrain.draw(t + point, action_index, true)
          self.root_terrain.draw_plane = (t + self.current_point) * self.current_normal
        else:
          self.draw(point, action_index, true)
        self.draw_plane = self.current_point * self.current_normal
      elif tool_mode == ObjectMode:
        var transform = init_transform().translated(self.to_global(self.current_point))
        create_bot(transform, data_node, up_axis = self.current_normal)
      elif tool_mode == CodeMode:
        self.trigger("block_selected")
        self.get_parent.trigger("deselect", true)

  method on_target_remove() =
    let loc = self.targeted_voxel
    if tool_mode == BlockMode:
      self.erasing = true
      let data = self.get_vox(loc)
      if data:
        let data = data.get
        self.draw(loc, 0)
        if self.buffers.len == 0:
          self.trigger("last_block_deleted", 0)
        else:
          self.trigger("terrain_block_removed", 0 , loc, data.index, data.keep)
      self.draw_plane = self.current_point * self.current_normal

import world/bot

proc create_bot(transform: Transform, parent: Node, up_axis = UP) =
  bot.create_bot(transform, parent, up_axis = up_axis)
