import ../godotapi / [sprite_3d, ray_cast, spatial],
       godot,
       strutils,
       globals

gdobj AimTarget of Sprite3D:
  var
    last_collider: Object

  method ready*() =
    self.set_as_top_level(true)
    self.bind_signals("retarget")

  method on_retarget*() =
    if self.last_collider != nil:
      self.last_collider.trigger("target_out")
      self.last_collider = nil

  proc update*(ray: RayCast) =
    ray.force_raycast_update()
    let collider = if ray.is_colliding(): ray.get_collider() else: nil

    if collider != self.last_collider:
      if self.last_collider != nil:
        self.last_collider.trigger("target_out")
      if collider != nil:
        self.visible = tool_mode != CodeMode
        collider.trigger("target_in")
      else:
        self.visible = false

    if collider != nil:
      let
        collision_point = ray.get_collision_point()
        collision_normal = ray.get_collision_normal()
        target_normal = collision_normal.round()

      var
        target_point: Vector3
        block_point: Vector3
        block_normal: Vector3
        transform = self.global_transform

      #TODO: This could be better
      if target_normal == UP or target_normal == DOWN:
        block_normal = vec3(0.5, 0, 0.5)
        block_point = (collision_point + block_normal).round()
        target_point = block_point - block_normal
      elif target_normal == FORWARD or target_normal == BACK:
        block_normal = vec3(0.5, 0.5, 0.0)
        block_point = (collision_point + block_normal).round()
        target_point =  block_point - block_normal
      else:
        block_normal = vec3(0, 0.5, 0.5)
        block_point = (collision_point + block_normal).round()
        target_point = block_point - block_normal
      transform.origin = target_point + collision_normal * 0.01
      self.global_transform = transform
      self.rotation_degrees = vec3(target_normal.y, target_normal.x, target_normal.z) * 90
      collider.trigger("target_move", target_point, target_normal)

    self.last_collider = collider


