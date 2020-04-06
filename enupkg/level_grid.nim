import ../godotapi / [grid_map],
       godot,
       strutils,
       globals

gdobj LevelGrid of GridMap:
  proc place_block*(point, normal: Vector3, index = 0) {.gdExport.} =
    let map_point = self.world_to_map(point + (normal * 0.5))
    self.set_cell_item(int(map_point.x), int(map_point.y), int(map_point.z), index)

  method ready*() =
    globals.place_block = proc(point, normal: Vector3, index: int) =
      debug "placing block " & $index
      self.place_block(point, normal, index)
