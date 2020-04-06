import ../godotapi / [sprite_3d, ray_cast, spatial],
       godot,
       strutils,
       globals, game, bot, selection_area

gdobj AimTarget of Sprite3D:
  var
    target_body*: NimBot
    target_point*: Vector3
    target_normal*: Vector3

  method ready*() =
    self.set_as_top_level(true)

  proc update*(ray: RayCast) =
    ray.force_raycast_update()
    var
      is_colliding = ray.is_colliding()
      body: NimBot = nil

    self.visible = is_colliding
    if is_colliding:
      let collider = ray.get_collider()

      if collider of SelectionArea:
        body = collider.as(SelectionArea).bot

      if current_game.tool_mode == CodeMode:
        self.visible = false
        if body != nil and body != self.target_body:
          body.highlight()

      if current_game.tool_mode == BlockMode:
        if body == nil:
          let
            collision_point = ray.get_collision_point()
            collision_normal = ray.get_collision_normal()

          var
            block_point: Vector3
            transform = self.global_transform

          self.target_normal = collision_normal.round()

          #TODO: This could be better
          if self.target_normal == UP or self.target_normal == DOWN:
            block_point = (collision_point + vec3(0.5, 0, 0.5)).round()
            self.target_point = block_point - vec3(0.5, 0.0, 0.5)
          elif self.target_normal == FORWARD or self.target_normal == BACK:
            block_point = (collision_point + vec3(0.5, 0.5, 0.0)).round()
            self.target_point =  block_point - vec3(0.5, 0.5, 0.0)
          else:
            block_point = (collision_point + vec3(0, 0.5, 0.5)).round()
            self.target_point = block_point - vec3(0.0, 0.5, 0.5)

          transform.origin = self.target_point + collision_normal * 0.01
          self.global_transform = transform
          var n = self.target_normal
          self.rotation_degrees = vec3(n.y, n.x, n.z) * 90
      else:
        self.visible = false

    if self.target_body != body:
      if self.target_body != nil:
        self.target_body.deselect()
      self.target_body = body
