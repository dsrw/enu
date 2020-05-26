import ../godotapi / [grid_map, mesh],
       godot,
       strutils,
       globals

gdobj LevelGrid of GridMap:
  proc place_block*(point, normal: Vector3, index = 0) =
    let map_point = self.world_to_map(point + (normal * 0.5))
    self.set_cell_item(int(map_point.x), int(map_point.y), int(map_point.z), index)

  method ready*() =
    globals.place_block = proc(point, normal: Vector3, index: int) =
      debug "placing block " & $index
      self.place_block(point, normal, index)

  proc highlight*(point, normal: Vector3) =
    let map_point = self.world_to_map(point + (normal * -0.5))
    for v in self.get_meshes():
      #if v of(Mesh):
      let mesh = v.asObject(Mesh)
      if mesh != nil:
        mesh.surface_set_material(0, nil)
      #else:
      #  debug("No mesh")
