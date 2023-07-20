import pkg / godot
import godotapi / [ray_cast, voxel_terrain]
import core, models / [units]

proc run*(query: var SightQuery, source: Unit) =
  assert not ?query.answer
  query.answer = some(false)

  let ray = source.sight_ray
  let node = VoxelTerrain(source.node)
  let target_position = query.target.position.local_to(source)
  let angle = target_position - ray.transform.origin

  if angle.length <= query.distance and angle.normalized.z <= -0.3:
    ray.cast_to = angle
    var old_layer = node.collision_layer
    node.collision_layer = 0
    ray.force_raycast_update
    if ray.is_colliding:

      let collider = ray.get_collider as Spatial
      if collider == query.target.node:
        query.answer = some(true)

    node.collision_layer = old_layer
