import std / [strutils]
import types, base_api

proc drawing*(self: Build): bool = discard
proc `drawing=`*(self: Build, drawing: bool) = discard
proc initial_position(self: Build): Vector3 = discard

proc home*(self: Build) =
  self.rotation = 0
  self.scale = 1
  self.glow = 0
  self.forward self.position.z - self.start_position.z, 2
  self.left self.position.x - self.start_position.x, 2
  self.down self.position.y - self.start_position.y, 2

proc fill_square*(self: Build, length = 1) =
  for l in 0..length:
    for i in 0..3:
      self.forward(length - l, 2)
      self.right(1, 2)

proc save*(self: Build, name = "default") = discard

proc restore*(self: Build, name = "default") = discard

proc reset*(self: Build, clear = false) = discard
