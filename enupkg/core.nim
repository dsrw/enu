### Sugar ###
from sugar import dup
import std/with, strformat, strutils, sequtils, sets, tables
export dup, with, strformat, strutils, sequtils, sets, tables

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

### Vector3 ###
import godot, math

proc vec3*(x, y, z: int): Vector3 {.inline.} =
  vec3(x.float, y.float, z.float)

proc trunc*(self: Vector3): Vector3 {.inline.} =
  vec3(trunc(self.x), trunc(self.y), trunc(self.z))

proc first*[T](arr: openArray[T], test: proc(x: T): bool): Option[T] =
  for item in arr:
    if test(item):
      return some(item)