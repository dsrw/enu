import types, base_api

let player* = PlayerType()
register_active(player)

proc tool*(self: PlayerType): Tools = discard
proc `tool=`*(self: PlayerType, value: Tools) = discard

proc playing*(self: PlayerType): bool = discard
proc `playing=`*(self: PlayerType, value: bool) = discard

proc flying*(self: PlayerType): bool = discard
proc `flying=`*(self: PlayerType, value: bool) = discard

proc god*(self: PlayerType): bool = discard
proc `god=`*(self: PlayerType, value: bool) = discard
