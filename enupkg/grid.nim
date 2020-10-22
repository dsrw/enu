import ../godotapi/[grid_map, mesh_library, mesh, spatial, spatial_material],
       godot, sets,
       core, globals, builder

let
  highlight_energy = 5.0
  default_energy = 0.1

gdobj Grid of GridMap:
  var
    kept_blocks: VoxTable
    point, normal, draw_plane: Vector3
    painting, erasing = false

  proc build_unique_mesh_library() =
    self.mesh_library = self.mesh_library.duplicate().as(MeshLibrary)
    for index in self.mesh_library.get_item_list():
      let mesh = self.mesh_library.get_item_mesh(index).duplicate().as(Mesh)
      var material = mesh.surface_get_material(0).duplicate().as(SpatialMaterial)
      material.emission_energy = default_energy
      mesh.surface_set_material 0, material
      self.mesh_library.set_item_mesh(index, mesh)

  method ready*() =
    trace:
      self.bind_signals(self,
        w"target_in target_out target_move target_fire target_remove")
      self.bind_signals("mouse_released")
      self.build_unique_mesh_library()

  proc set_energy_for_all_materials(energy: float) =
    let lib = self.mesh_library
    for index in lib.get_item_list():
      let
        mesh = lib.get_item_mesh(index)
        material = mesh.surface_get_material(0).as(SpatialMaterial)
      material.emission_energy = energy

  proc highlight() =
    self.set_energy_for_all_materials highlight_energy

  proc clear_highlight() =
    self.set_energy_for_all_materials default_energy

  proc set_energy*(color: int, energy: float) =
    let m = self.mesh_library.get_item_mesh(color)
                             .surface_get_material(0)
                             .as(SpatialMaterial)
    if not m.is_nil:
      m.emission_energy = energy

  proc draw*(x, y, z: float, index: int, keep = false) =
    let map_point = vec3(x, y, z)
    if keep:
      self.trigger("grid_block_added", map_point, index)
    var index = index - 1
    self.set_cell_item(int(map_point.x), int(map_point.y), int(map_point.z), index)
    let data = (index, 0, keep)
    if keep and index > -1:
      self.kept_blocks[map_point] = data
    else:
      self.kept_blocks.del map_point

  proc clear*(all = false) =
    self.as(GridMap).clear()
    if all:
      self.kept_blocks.clear()
    else:
      for loc, data in self.kept_blocks:
        self.set_cell_item(int loc.x, int loc.y, int loc.z, data.index)

  proc export_data*(): seq[Vox] =
    for v in self.get_used_cells():
      let
        loc = v.asVector3()
        index = self.get_cell_item(int loc.x, int loc.y, int loc.z)

      var vox: Vox = (loc, (int index + 1, 0, false))
      if loc in self.kept_blocks:
        vox.data.keep = true
      result.add(vox)

  proc import_data*(data: seq[Vox]) =
    for (loc, data) in data:
      self.draw(loc.x, loc.y, loc.z, data.index, data.keep)

  method on_target_in() =
    if tool_mode == CodeMode:
      self.highlight()

  method on_target_out() =
    self.clear_highlight()

  method on_mouse_released() =
    self.painting = false
    self.erasing = false
    self.draw_plane = vec3()

  method on_target_move(point, normal: Vector3) =
    self.point = self.to_local(point - self.get_parent.as(Spatial).translation)
    self.normal = self.to_local(normal)

    if self.painting and tool_mode == BlockMode:
      let plane = self.point * self.normal
      if self.draw_plane == plane:
        self.on_target_fire()
    elif self.erasing and tool_mode == BlockMode:
      let plane = self.point * self.normal
      if self.draw_plane == plane:
        self.on_target_remove()

  method on_target_fire() =
    if tool_mode == BlockMode:
      self.painting = true
      let point = self.world_to_map(self.point + self.normal * 0.5)
      self.draw(point.x, point.y, point.z, action_index, true)
      self.draw_plane = self.point * self.normal
    else:
      self.clear_highlight()
      self.trigger("selected")

  method on_target_remove() =
    if tool_mode == BlockMode:
      self.erasing = true
      let point = self.world_to_map(self.point - (self.normal * 0.5))
      let index = self.get_cell_item(int point.x, int point.y, int point.z).int
      self.draw(point.x, point.y, point.z, 0)
      self.draw_plane = self.point * self.normal
      if self.get_used_cells().len == 0:
        self.trigger("deleted")
      else:
        let keep = point in self.kept_blocks
        self.trigger("grid_block_removed", point, index, keep)
