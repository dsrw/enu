import ../godotapi/[grid_map, mesh_library, mesh, spatial],
       godot,
       core, globals, builder

export grid_map.clear

gdobj Grid of GridMap:
  var
    highlight_material* {.gdExport}: Material
    original_materials: seq[Material]
    point, normal: Vector3

  proc build_unique_mesh_library() =
    self.mesh_library = self.mesh_library.duplicate().as(MeshLibrary)
    for index in self.mesh_library.get_item_list():
      let mesh = self.mesh_library.get_item_mesh(index).duplicate().as(Mesh)
      self.mesh_library.set_item_mesh(index, mesh)
      self.original_materials.add(mesh.surface_get_material(0))

  method ready*() =
    let signals = ["target_in", "target_out", "target_move", "target_fire",
                   "target_remove"]
    self.bind_signals(self, signals)
    self.build_unique_mesh_library()

  proc highlight() =
    let lib = self.mesh_library
    for index in lib.get_item_list():
      let mesh = lib.get_item_mesh(index)
      mesh.surface_set_material(0, self.highlight_material)

  proc clear_highlight() =
    let lib = self.mesh_library
    for index in lib.get_item_list():
      let mesh = lib.get_item_mesh(index)
      mesh.surface_set_material(0, self.original_materials[index])

  proc draw*(x, y, z: float, index: int) =
    var index = index - 1
    let map_point = self.world_to_map(vec3(x, y, z))
    self.set_cell_item(int(map_point.x), int(map_point.y), int(map_point.z), index)

  method on_target_in() =
    if tool_mode == CodeMode:
      self.highlight()

  method on_target_out() =
    if tool_mode == CodeMode:
      self.clear_highlight()

  method on_target_move(point, normal: Vector3) =
    self.point = point - self.get_parent.as(Spatial).translation
    self.normal = normal

  method on_target_fire() =
    if tool_mode == BlockMode:
      let point = (self.point + self.normal * 0.5)
      self.draw(point.x, point.y, point.z, action_index)
    else:
      self.clear_highlight()
      self.trigger("selected")

  method on_target_remove() =
    let point = self.point - (self.normal * 0.5)
    self.draw(point.x, point.y, point.z, 0)
