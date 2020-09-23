### Sugar ###
from sugar import dup
import std/with, strformat, strutils, sequtils, sets, tables
export dup, with, strformat, strutils, sequtils, sets, tables

### Vox ###
import godot, ../godotapi/node, hashes, sets

type
  Vox* = array[4, int]
  VoxSet* = ref object
    blocks*: HashSet[Vox]

  DrawMode* = enum
    GridMode, VoxelMode

  Pen* = ref object of RootObj
    id*: string
    builder*: Node
    voxes*: VoxSet # XXX find a better name

proc x*(v: Vox): int {.inline.} = v[0]
proc y*(v: Vox): int {.inline.} = v[1]
proc z*(v: Vox): int {.inline.} = v[2]
proc index*(v: Vox): int {.inline.} = v[3]

proc hash*(v: Vox): Hash {.inline.} = v[0..2].hash
proc `==`*(v1, v2: Vox): bool = v1[0..2] == v2[0..2]

proc to_vox*(v: Vector3, index: int): Vox {.inline.} =
  [int v.x, int v.y, int v.z, index]
proc to_vox*(v: Vector3): Vox {.inline.} = v.to_vox(0)
proc vec3*(v: Vox): Vector3 {.inline.} =
  vec3(float v.x, float v.y, float v.z)
proc split*(v: Vox): (Vector3, int) = (vec3(v), v.index)

### Debug
from sugar import dump
import parseutils
export dump

template trace*(body: untyped): untyped =
  # https://github.com/nim-lang/Nim/issues/8212#issuecomment-657202258
  when not declaredInScope(internalCProcName):
    var internalCProcName {.exportc:"__the_name_should_not_be_used", inject.}: cstring
    {.emit: "__the_name_should_not_be_used = __func__;".}
    var realProcNameButShouldnotBeUsed {.inject.}: string
    discard parseUntil($internalCProcName, realProcNameButShouldnotBeUsed, "__")
  #/
  var proc_name = realProcNameButShouldnotBeUsed
  let file = instantiation_info().filename
  echo "Starting " & proc_name & " in file " & file & ":"
  let n = now()
  body
  echo "Finished " & proc_name & ". Took " & $(now() - n) & "."

### times ###
import times
export times

proc seconds*(s: float): TimeInterval {.inline.} =
  init_time_interval(milliseconds = int(s * 1000))

### options ###
import options
export options

converter to_option*[T](val: T): Option[T] =
  some(val)

converter to_bool*[T](option: Option[T]): bool =
  option.is_some
