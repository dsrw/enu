import std / [strutils]
import helpers, types, base_api

proc drawing(self: Build): bool = discard
proc `drawing=`(self: Build, drawing: bool) = discard
proc color(self: Build): Colors = discard
proc `color=`(self: Build, color: Colors) = discard
proc initial_position(self: Build): Vector3 = discard

proc home*(self: Build) =
  self.forward self.position.z - self.initial_position.z, 1
  self.left self.position.x - self.initial_position.x, 1
  self.down self.position.y - self.initial_position.y, 1

proc fill_square*(self: Build, length = 1) =
  for l in 0..length:
    for i in 0..3:
      self.forward(length - l, 2)
      self.right(1, 2)

proc save*(self: Build, name = "default") = discard

proc restore*(self: Build, name = "default") = discard

proc reset*(self: Build, clear = false) = discard
