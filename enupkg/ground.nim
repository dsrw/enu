import ../godotapi / [mesh_instance, node, spatial, resource_loader, packed_scene],
       godot,
       core, globals, builder, pen

#const signals = ["target_move", "target_fire", "target_remove"]

gdobj Ground of MeshInstance:
  var
    point, normal: Vector3
    data: Node

  method ready*() =
    self.data = self.get_parent.get_parent.get_node("data")
    self.bind_signals(self, "target_move", "target_fire")

  method on_target_move(point, normal: Vector3) =
    self.point = point
    self.normal = normal

  method on_target_fire() =
    # create builder
    let p = self.point - vec3(0.5, 0, 0.5)
    for pen in pens:
      for x in -2..2:
        for z in -2..2:
          let v = [int x.float + p.x, 0,
                   int z.float + p.z, 0]
          if v in pen.voxes.blocks:
            pen.draw(p, action_index - 1, save = true)
            return
    var t = now()
    let
      ps = load("res://components/Builder.tscn") as PackedScene
      b = ps.instance() as Builder
    assert not b.is_nil
    b.translation = p
    b.name = "Builder" & $max_grid_index
    b.schedule_save = true
    self.data.add_child(b)
    b.owner = self.data

    echo &"{self.data.name} children {self.data.get_children.len}"
