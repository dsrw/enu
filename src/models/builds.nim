import std / [hashes, tables, sets]
import pkg / [print, model_citizen, compiler/vmdef]
import types
const BufferSize = (16, 16, 16)

proc init*(t: typedesc[Build], root = false, position = (0.0, 0.0, 0.0)): Build =
  Build(root: root, voxels: result.voxels.type.init, position: position)

proc code_template(self: Unit, file: string, imports: string): string =
  default_builder(state.config.script_dir & "/" & file, imports, self.script_ctx.is_clone)

proc find_root(self: Build): tuple[build: Build, offset: V3[float]] =
  result.build = self
  var parent = self.parent
  while parent != nil and not result.build.root:
    if parent of Build:
      result.build = Build(parent)
      result.offset += result.build.position
    parent = parent.parent

proc draw(self: Build, position: V3[int], voxel: Voxel) =
  var target = self
  var offset: V3[float]
  if voxel.kind in {Manual, Hole}:
    (target, offset) = self.find_root

  let buf = (position / BufferSize)
  let position = position - offset.to_int - (buf * BufferSize)
  target.voxels[buf][position] = voxel

when is_main_module:
  import unittest

  var b = Build.init(root = true)
  b.draw (1, 1, 1), Voxel(kind: Computed)
  check (1, 1, 1) in b.voxels[(0, 0, 0)]
  b.draw (17, 17, 17), Voxel(kind: Computed)
  check (1, 1, 1) in b.voxels[(1, 1, 1)]
  var c = Build.init(position = (5, 5, 5))
  c.parent = b

  c.draw (14, 14, 14), Voxel(kind: Manual)
  print c
