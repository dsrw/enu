import types, base_api, bridge_utils

let player* = PlayerType()
register_active(player)

bindings:
  proc tool*(self: PlayerType): Tools = discard
  proc `tool=`*(self: PlayerType, value: Tools) = discard

  proc playing*(self: PlayerType): bool = discard
  proc `playing=`*(self: PlayerType, value: bool) = discard

  proc flying*(self: PlayerType): bool = discard
  proc `flying=`*(self: PlayerType, value: bool) = discard

  proc god*(self: PlayerType): bool = discard
  proc `god=`*(self: PlayerType, value: bool) = discard

  proc coding*(self: PlayerType): Unit = discard
  proc `coding=`*(self: PlayerType, value: Unit) = discard
