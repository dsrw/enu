import godotapi / [sprite_3d, ray_cast, spatial]
import godot, model_citizen
import std / [strutils, math]
import globals, core

gdobj AimTarget of Sprite3D:
  var
    last_collider: Spatial
    last_point, last_normal: Vector3

  method ready*() =
    trace:
      self.set_as_top_level(true)
      self.bind_signals(w"collider_exiting")

    state.target_flags.track proc(added, removed: set[TargetFlag]) =
      if Targeting in added:
        self.visible = true
      if Targeting in removed:
        self.visible = false
      if ((added + removed) * {Targeting, Reticle}).len > 0:
        # retarget
        if self.last_collider != nil:
          self.last_collider.trigger("target_out")
          self.last_collider = nil
          self.last_point = vec3()
          self.last_normal = vec3()

  proc update*(ray: RayCast) =
    ray.force_raycast_update()
    let collider = if ray.is_colliding():
      ray.get_collider().as(Spatial)
    else:
      nil

    if collider != self.last_collider:
      if self.last_collider != nil:
        self.last_collider.trigger("target_out")
      if collider != nil:
        state.targeting = tool_mode != CodeMode
        collider.trigger("target_in")
      else:
        state.targeting = false

    if collider != nil:
      let
        local_collision_point = collider.to_local(ray.get_collision_point())
      var
        global_normal = ray.get_collision_normal()
        local_point: Vector3


      #self.translation = collider.to_global collision_point#collision_point #+ (collision_normal * 0.01)

      let inverse_normal = global_normal.inverse_normalized()
      let
        basis = collider.global_transform.basis
        half = vec3(0.5, 0.5, 0.5)
        full = vec3(1, 1, 1)
        fuzzy = vec3(0.05, 0.05, 0.05)
        local_normal = (basis.xform_inv(global_normal) / collider.scale)
                             .snapped(half)
        factor = local_normal.inverse_normalized() * 0.5

      if not local_normal.is_axis_aligned:
        # All local normals should be axis aligned because we're dealing with cubes.
        # If it isn't, we probably got a corner or something.
        return

      local_point = (local_collision_point - factor).snapped(vec3(1, 1, 1)) + factor
      global_normal = basis.xform(local_normal) / collider.scale

      self.translation = collider.to_global local_point + (local_normal * 0.01) / collider.scale
      self.scale = collider.scale

      let
        align_normal = self.transform.origin + global_normal
        axis = if local_normal.abs != UP: UP else: FORWARD
      self.look_at(align_normal, axis)

      if (self.last_point, self.last_normal) != (local_point, local_normal):
        self.last_point = local_point
        self.last_normal = local_normal
        collider.trigger("target_move", local_point, local_normal)

    self.last_collider = collider

  method on_collider_exiting(collider: Spatial) =
    if collider == self.last_collider:
      self.last_collider = nil
