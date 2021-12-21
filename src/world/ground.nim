import godotapi / [mesh_instance, node, spatial, resource_loader, packed_scene]
import pkg / [godot, model_citizen]
import core, globals, sugar, world / [build_node, bot_node], models / [builds, bots]

gdobj Ground of MeshInstance:
  var
    point, normal: Vector3
    painting = false

  method ready*() =
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
      let neighbour = state.units.find_first(voxels)
      if neighbour:
        let local = p.local_to(neighbour)
        neighbour.draw(local, (Manual, init_color()))
      else:
        state.units += Build.init(Node, position = p, root = true)

      # for c in state.nodes.data.get_children():
      #   let b = c.as_object(Node)
        # TODO
        # if b of BuildNode:
        #   let b = b.as(BuildNode)
        #   if b.includes_any_location(voxels):
        #     b.draw(p, action_index)
        #     return

      # create_builder(p, data_node)

    elif tool_mode == ObjectMode:
      var t = Transform.init(origin = p)
      state.units += Bot.init(Node, transform = t)

  method on_target_move(point, normal: Vector3) =
    let previous_point = self.point
    self.point = point
    self.normal = normal
    if self.painting and previous_point != self.point and tool_mode == BlockMode:
      self.on_target_fire()
