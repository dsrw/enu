import godotapi / [mesh_instance, node, spatial, resource_loader, packed_scene]
import godot, sugar
import core, globals, world / [builder, bot, terrain]

gdobj Ground of MeshInstance:
  var
    point, normal: Vector3
    #terrain: Terrain
    painting = false

  method ready*() =
    trace:
      let level = self.get_parent.get_parent
      #self.terrain = level.get_node("Terrain") as Terrain
      #assert not self.terrain.is_nil
      self.bind_signals(self, w"target_move target_fire")
      self.bind_signals("mouse_released")

  method on_mouse_released() =
    self.painting = false

  method on_target_fire() =
    var p = self.point
    p = (p - vec3(0.5, 0, 0.5)).trunc
    let voxels = collect(new_seq):
      for x in 0..2:
        for y in 0..2:
          for z in 0..2:
            p + vec3(x - 1, y - 1, z - 1)

    if tool_mode == BlockMode:
      self.painting = true
      # for loc in voxels:
      #   let vox = self.terrain.get_vox(loc)
      #   if vox:
      #     self.terrain.draw(p.x, p.y, p.z, action_index, vox.get.offset, true)
      #     return
      for c in data_node.get_children():
        let b = c.as_object(Node)
        if b of Builder:
          let b = b.as(Builder)
          echo "Looking at ", b.name
          if b.includes_any_location(voxels):
            b.draw(p.x, p.y, p.z, action_index, true)
            return

      create_builder(p, data_node)

    elif tool_mode == ObjectMode:
      create_bot(p, data_node)

  method on_target_move(point, normal: Vector3) =
    let previous_point = self.point
    self.point = point
    self.normal = normal
    if self.painting and previous_point != self.point and tool_mode == BlockMode:
      self.on_target_fire()
