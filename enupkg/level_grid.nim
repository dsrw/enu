import ../godotapi / [grid_map, mesh, mesh_library],
       godot,
       strutils,
       globals

const signals = ["target_in", "target_out", "target_move", "target_fire", "target_remove"]

var active*: Node

gdobj LevelGrid of GridMap:
  var
    point, normal: Vector3
    index: int64 = 0
    highlight_material* {.gdExport.}: Material

  proc init*() =
    for signal in signals:
      self.add_user_signal(signal)

  proc place_block*(point, normal: Vector3, index: int64 = 0) =
    let map_point = self.world_to_map(point + (normal * 0.5))
    self.set_cell_item(int(map_point.x), int(map_point.y), int(map_point.z), index)

  method ready*() =
    bind_signals(self, self, signals)
    active = self

  proc highlight(point, normal: Vector3) =
    let map_point = self.world_to_map(point + (normal * -0.5))
    for v in self.get_meshes():
      let mesh = v.asObject(Mesh)
      if mesh != nil:
        mesh.surface_set_material(0, self.highlight_material)

  proc next*() =
    inc self.index
    let lib = self.mesh_library
    if self.index == lib.get_last_unused_item_id(): self.index = 0
    debug("Mesh: " & lib.get_item_name(self.index))

  proc previous*() =
    dec self.index
    let lib = self.mesh_library
    if self.index < 0: self.index = lib.get_last_unused_item_id() - 1
    debug("Mesh: " & lib.get_item_name(self.index))

  method on_target_in() =
    active = self
    print "lg target in"

  method on_target_out() =
    print "lg target out"

  method on_target_move(point, normal: Vector3) =
    (self.point, self.normal) = (point, normal)
    if tool_mode == CodeMode:
      self.highlight(point, normal)

  method on_target_fire() =
    self.place_block(self.point, self.normal, self.index)

  method on_target_remove() =
    self.place_block(self.point, -self.normal, -1)

proc get_level_grid*(): LevelGrid = active as LevelGrid
