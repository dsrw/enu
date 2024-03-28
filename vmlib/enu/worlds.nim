import system except echo
import types, vm_bridge_utils

var world* = World()

bridged_to_host:
  proc environment*(self: World): string
  proc `environment=`*(self: World, value: string)
  proc mega_pixels*(self: World): float
  proc `mega_pixels=`*(self: World, value: float)
