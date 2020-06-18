import ../godotapi / [grid_map, mesh, mesh_library],
       godot,
       strutils,
       globals

const signals = ["target_in", "target_out", "target_move", "target_fire", "target_remove"]

var active*: Node

gdobj LevelGrid of GridMap:
  var
    point, normal: Vector3
    index: int = 0
    highlight_material* {.gdExport.}: Material
    original_materials: seq[Material]

  proc init*() =
    for signal in signals:
      self.add_user_signal(signal)

  proc place_block*(point, normal: Vector3, index: int64 = 0) =
    let map_point = self.world_to_map(point + (normal * 0.5))
    self.set_cell_item(int(map_point.x), int(map_point.y), int(map_point.z), index)

  proc build_unique_mesh_library() =
    self.mesh_library = self.mesh_library.duplicate().as(MeshLibrary)
    for index in self.mesh_library.get_item_list():
      let mesh = self.mesh_library.get_item_mesh(index).duplicate().as(Mesh)
      self.mesh_library.set_item_mesh(index, mesh)
      self.original_materials.add(mesh.surface_get_material(0))

  method ready*() =
    bind_signals(self, self, signals)
    self.build_unique_mesh_library()
    active = self

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

  proc next*() =
    inc self.index
    let lib = self.mesh_library
    if self.index == lib.get_item_list().len(): self.index = 0
    debug("Mesh: " & lib.get_item_name(self.index))

  proc previous*() =
    dec self.index
    let lib = self.mesh_library
    if self.index < 0: self.index = lib.get_item_list().len() - 1
    debug("Mesh: " & lib.get_item_name(self.index))

  method on_target_in() =
    active = self
    if tool_mode == CodeMode:
      self.highlight()

  method on_target_out() =
    if tool_mode == CodeMode:
      self.deselect()

  method on_target_move(point, normal: Vector3) =
    (self.point, self.normal) = (point, normal)


  method on_target_fire() =
    self.place_block(self.point, self.normal, self.index)

  method on_target_remove() =
    self.place_block(self.point, -self.normal, -1)

proc get_level_grid*(): LevelGrid = active as LevelGrid
