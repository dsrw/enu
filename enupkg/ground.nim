import ../godotapi / [mesh_instance, node, spatial, resource_loader, packed_scene],
       godot, sugar,
       core, globals, builder, bot, terrain

gdobj Ground of MeshInstance:
  var
    point, normal: Vector3
    terrain: Terrain
    painting = false

  method ready*() =
    trace:
      let level = self.get_parent.get_parent
      self.terrain = level.get_node("Terrain") as Terrain
      assert not self.terrain.is_nil
      self.bind_signals(self, w"target_move target_fire")
      self.bind_signals("mouse_released")

  proc create_builder(point: Vector3) =
    let
      ps = load("res://components/Builder.tscn") as PackedScene
      b = ps.instance() as Builder
    assert not b.is_nil
    b.paused = true
    b.setup(point)
    b.initial_index = action_index
    data_node.add_child(b)
    b.owner = data_node
    save_scene()

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
      for loc in voxels:
        let vox = self.terrain.get_vox(loc)
        if vox:
          self.terrain.draw(p.x, p.y, p.z, action_index, vox.get.offset, true)
          return
      for c in data_node.get_children():
        let b = c.as_object(Node)
        if b of Builder:
          let b = b.as(Builder)
          echo "Looking at ", b.name
          if b.includes_any_location(voxels):
            if b.draw_mode == GridMode:
              # TODO get rid of this
              p -= b.translation
            b.draw(p.x, p.y, p.z, action_index, true)
            return

      self.create_builder(p)

    elif tool_mode == ObjectMode:
      let
        proto = load("res://components/bot.tscn") as PackedScene
        bot = proto.instance() as NimBot
      assert not bot.is_nil
      bot.translation = p + vec3(0.5, 0, 0.5)
      bot.paused = true
      bot.setup()
      data_node.add_child(bot)
      bot.owner = data_node
      save_scene()

  method on_target_move(point, normal: Vector3) =
    let previous_point = self.point
    self.point = point
    self.normal = normal
    if self.painting and previous_point != self.point and tool_mode == BlockMode:
      self.on_target_fire()
