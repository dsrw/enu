import std / [strutils, math]
import types, base_api

proc play*(self: Bot, animation_name: string) = discard

proc walk*(self: Bot) =
  self.speed = 1.0
  self.play("walk")

proc run*(self: Bot) =
  self.speed = 5.0
  self.play("run")
