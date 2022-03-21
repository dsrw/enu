import std / [strutils, wrapnils]
import pkg / [godot, model_citizen]
import godotapi / [sprite_3d, ray_cast, spatial]
import globals, core, nodes/helpers, models

let state = GameState.active

gdobj AimTarget of Sprite3D:
  var target_model: Model

  method ready*() {.gdExport.} =
    self.set_as_top_level(true)
    self.bind_signals "collider_exiting"

    state.flags.changes:
      if BlockTargetVisible.added:
        self.visible = true
      elif BlockTargetVisible.removed:
        self.visible = false

    state.tool.track proc(changes: auto) =
      # tool changed. Retarget.
      if self.target_model != nil:
        self.target_model.flags -= Hover
        self.target_model.target_point = vec3()
        self.target_model.target_normal = vec3()
        self.target_model = nil

  proc update*(ray: RayCast) =
    ray.force_raycast_update()
    let collider = if ray.is_colliding():
      ray.get_collider() as Spatial
    else:
      nil
    let unit = ?.collider.model

    if unit != self.target_model:
      if self.target_model != nil:
        self.target_model.flags -= Hover
      self.target_model = unit
      if unit != nil:
        state.set_flag(ShowBlockTarget, state.tool.value != Code)
        unit.flags += Hover
      else:
        state.flags -= ShowBlockTarget

    if collider != nil:
      var
        global_normal = ray.get_collision_normal()
        local_point: Vector3
      let
        local_collision_point = collider.to_local(ray.get_collision_point())
        inverse_normal = global_normal.inverse_normalized()
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

      let align_normal = self.transform.origin + global_normal
      self.look_at(align_normal, self.transform.basis.x)

      if unit:
        if (unit.target_point, unit.target_normal) != (local_point, local_normal):
          unit.target_point = local_point
          unit.target_normal = local_normal
          unit.flags.touch TargetMoved
        else:
          unit.flags -= TargetMoved

  method on_collider_exiting(collider: Spatial) =
    if collider.model == self.target_model:
      self.target_model = nil
