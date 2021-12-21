import std / [hashes, tables, sets]
import pkg / [model_citizen, print]
import types
const BufferSize = vec3(16, 16, 16)

proc init*(t: type Build, T: type, root = false, transform = Transform.init): Build[T] =
  Build[T](
    root: root,
    voxels: result.voxels.type.init,
    transform: transform,
    units: ZenSeq[Unit[T]].init
  )

proc find_root[T](self: Build[T]): tuple[build: Build[T], offset: Vector3] =
  result.build = self
  var parent = self.parent
  while parent != nil and not result.build.root:
    if parent of Build[T]:
      result.build = Build[T](parent)
      result.offset += result.build.transform.origin
    parent = parent.parent

proc draw*(self: Build, position: Vector3, voxel: VoxelInfo) =
  var target = self
  var offset: Vector3
  if voxel.kind in {Manual, Hole}:
    (target, offset) = self.find_root

  let buf = (position / BufferSize).floor
  let position = position - offset - (buf * BufferSize)
  target.voxels[buf][position] = voxel

when is_main_module:
  import unittest
  type Node = ref object of RootObj

  var b = Build.init(Node, root = true)

  b.draw vec3(1, 1, 1), VoxelInfo(kind: Computed)
  check vec3(1, 1, 1) in b.voxels[vec3(0, 0, 0)]
  b.draw vec3(17, 17, 17), VoxelInfo(kind: Computed)
  check vec3(1, 1, 1) in b.voxels[vec3(1, 1, 1)]
  var c = Build.init(Node, transform = Transform(origin: vec3(5, 5, 5)))
  c.parent = b

  c.draw vec3(14, 14, 14), VoxelInfo(kind: Manual)
