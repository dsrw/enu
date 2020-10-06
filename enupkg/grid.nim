import ../godotapi/[grid_map, mesh_library, mesh, spatial],
       godot,
       core, globals, builder

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

  proc deselect() =
    let lib = self.mesh_library
    for index in lib.get_item_list():
      let mesh = lib.get_item_mesh(index)
      mesh.surface_set_material(0, self.original_materials[index])

  # proc select*() =
  #   self.pen.builder.trigger("selected")
  #   self.deselect()

  method on_target_in() =
    if tool_mode == CodeMode:
      self.highlight()

  method on_target_out() =
    if tool_mode == CodeMode:
      self.deselect()

  method on_target_move(point, normal: Vector3) =
    (self.point, self.normal) = (point, normal)

  # method on_target_fire() =
  #   if tool_mode == BlockMode:
  #     self.pen.draw(self.point + (self.normal * 0.5), action_index + 1)
  #   else:
  #     self.select()

  # method on_target_remove() =
  #   self.pen.draw(self.point - (self.normal * 0.5), -1)
