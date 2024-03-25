import types, base_api, vm_bridge_utils

let player* = PlayerType()
register_active(player)

bridged_to_host:
  proc tool*(self: PlayerType): Tools
  proc `tool=`*(self: PlayerType, value: Tools)
  proc playing*(self: PlayerType): bool
  proc `playing=`*(self: PlayerType, value: bool)
  proc flying*(self: PlayerType): bool
  proc `flying=`*(self: PlayerType, value: bool)
  proc running*(self: PlayerType): bool
  proc `running=`*(self: PlayerType, value: bool)
  proc god*(self: PlayerType): bool
  proc `god=`*(self: PlayerType, value: bool)
  proc coding*(self: PlayerType): Unit
  proc `coding=`*(self: PlayerType, value: Unit)
  proc open_sign*(self: PlayerType): Sign
  proc `open_sign=`*(self: PlayerType, value: Sign)
