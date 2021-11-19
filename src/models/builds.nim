import std / [math, hashes, tables, sets]
import print, compiler/vmdef
import types
const BufferSize: V2[int] = (16, 16)

proc hash(v: Voxel): Hash = v.position.hash

proc find_root(self: Build): Build =
  result = self
  var parent = self.parent
  while parent != nil:
    if parent of Build:
      result = Build(parent)
    parent = parent.parent

proc draw(self: Build, voxel: Voxel) =
  var target = self
  if voxel.kind in {Manual, Hole}:
    target = self.find_root

  let buf: V2[int] = ((voxel.position.x / BufferSize.x).floor.int,
                      (voxel.position.y / BufferSize.y).floor.int)

  self.voxels.mget_or_put(buf, HashSet[Voxel].default)
             .incl voxel

when is_main_module:
  import unittest
  #converter toint(a: distinct int): int =
  #  int(a)


  var b = Build()
  b.draw Voxel(position: (1, 1, 1), kind: Computed)
  echo "hi"
  # type MyInt = distinct int
  # let a = MyInt(5)
  # let c: int = a.toint
  print b
  echo "bye"
