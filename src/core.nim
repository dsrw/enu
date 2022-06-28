import types
export types

const enu_version* = static_exec("git describe --tags HEAD")

### Sugar ###
from sugar import dup, dump, collect
import std/with, strformat, strutils, sequtils, sets, tables, times, std/monotimes, print
export dup, with, strformat, strutils, sequtils, sets, tables, print

### Debug
import parseutils
export dump

var
  durations*: Table[string, Duration]
  trace_start_time: MonoTime
  section_start_time: MonoTime
  current_proc: string

template nim_filename*: string = instantiation_info(full_paths = true).filename

template trace*(body: untyped): untyped =
  # https://github.com/nim-lang/Nim/issues/8212#issuecomment-657202258
  when not declaredInScope(internalCProcName):
    var internalCProcName {.exportc:"__the_name_should_not_be_used", inject.}: cstring
    {.emit: "__the_name_should_not_be_used = __func__;".}
    var realProcNameButShouldnotBeUsed {.inject.}: string
    discard parseUntil($internalCProcName, realProcNameButShouldnotBeUsed, "__")
  #/
  var proc_name = realProcNameButShouldnotBeUsed
  let module = instantiation_info().filename[0..^3]
  trace_start_time = get_mono_time()
  section_start_time = trace_start_time

  body
  let
    current_proc = module & "." & proc_name
    duration = get_mono_time() - trace_start_time
  durations[current_proc] = durations.get_or_default(current_proc) + duration

proc log_trace*(name = "") =
  let now = get_mono_time()
  if name != "":
    echo &"{current_proc}#{name} took {now - section_start_time}"
  section_start_time = now

### times ###
export times

proc seconds*(s: float): TimeInterval {.inline.} =
  init_time_interval(milliseconds = int(s * 1000))

proc to_duration(interval: TimeInterval): Duration =
  init_duration(nanoseconds = interval.nanoseconds,
                microseconds = interval.microseconds,
                milliseconds = interval.milliseconds,
                seconds = interval.seconds,
                minutes = interval.minutes,
                hours = interval.hours)

proc `+`*(time: MonoTime, interval: TimeInterval): MonoTime =
  time + interval.to_duration

proc `-`*(time: MonoTime, interval: TimeInterval): MonoTime =
  time - interval.to_duration

### options ###
import options
export options

proc `?`*(self: ref): bool = not self.is_nil
proc `?`*[T](option: Option[T]): bool = option.is_some
proc `?`*(self: SomeNumber): bool = self > 0
proc `?`*(self: string): bool = self != ""
proc `?`*[T](self: open_array[T]): bool = self.len > 0

proc `||=`*[T](opt: var Option[T], val: T): T {.discardable.} =
  if not opt.is_some:
    opt = some(val)
    result = val
  else:
    result = opt.get()

converter from_option*[T](val: Option[T]): T =
  val.get()

proc optional_get*[T](self: var HashSet[T], key: T): Option[T] =
  if key in self:
    result = some(self[key])
  else:
    result = none(T)

### Vector3 ###
import core/godotcoretypes, core/vector3, math

const
  UP* = vec3(0, 1, 0)
  DOWN* = vec3(0, -1, 0)
  BACK* = vec3(0, 0, 1)
  FORWARD* = vec3(0, 0, -1)
  RIGHT* = vec3(1, 0, 0)
  LEFT* = vec3(-1, 0, 0)

proc vec3*(x, y, z: int): Vector3 {.inline.} =
  vec3(x.float, y.float, z.float)

proc vec3*(x: int | float): Vector3 {.inline.} =
  vec3(x, x, x)

proc trunc*(self: Vector3): Vector3 {.inline.} =
  vec3(trunc(self.x), trunc(self.y), trunc(self.z))

proc inverse_normalized*(self: Vector3): Vector3 {.inline.} =
  (self - vec3(self.length, self.length, self.length)) * -1

proc first*[T](arr: open_array[T], test: proc(x: T): bool): Option[T] =
  for item in arr:
    if test(item):
      return some(item)

proc round*(v: Vector3): Vector3 {.inline.} =
  vec3(v.x.round(), v.y.round(), v.z.round())

proc is_axis_aligned*(v: Vector3): bool {.inline.} =
  v in [UP, DOWN, LEFT, RIGHT, FORWARD, BACK]

# Basis

proc `x=`*(self: var Basis, value: Vector3) {.inline.} =
  self.elements[0].x = value.x
  self.elements[1].x = value.y
  self.elements[2].x = value.z

proc `y=`*(self: var Basis, value: Vector3) {.inline.} =
  self.elements[0].y = value.x
  self.elements[1].y = value.y
  self.elements[2].y = value.z

proc `z=`*(self: var Basis, value: Vector3) {.inline.} =
  self.elements[0].z = value.x
  self.elements[1].z = value.y
  self.elements[2].z = value.z

proc surrounding*(point: Vector3): seq[Vector3] =
  collect(new_seq):
    for x in 0..2:
      for y in 0..2:
        for z in 0..2:
          point + vec3(x - 1, y - 1, z - 1)

# math
const CMP_EPSILON = 0.00001
proc roughly_zero[T](s: T): bool =
  abs(s) < CMP_EPSILON

proc lerp*(self, other, t: float): float {.inline.} =
  self + t * (other - self)

proc wrap*[T](value, min, max: T): float =
  let range = max - min
  if range.roughly_zero:
    min
  else:
    value - (range * floor((value - min) / range))

# ids

import pkg/nanoid

proc generate_id*(): string = generate(
    alphabet = "abcdefghijklmnopqrstuvwxyz0123456789",
    size = 13
  )

# exceptions

proc init*[T: Exception](kind: type[T], message: string, parent: ref Exception = nil): ref Exception =
  (ref kind)(msg: message, parent: parent)

# output
when true: # do something here for tests. Godot print crashes without godot.
  import pkg / godot

  proc p*(args: varargs[string, `$`]) =
    let msg = args.join
    godot.print msg

# misc
import pkg / core / transforms
export transforms

import godotapi / [spatial]
import pkg / model_citizen
export model_citizen except `%`

proc local_to*(self: Vector3, unit: Unit): Vector3 =
  result = self
  var unit = unit
  while unit != nil:
    result -= unit.node.transform.origin
    unit = unit.parent

proc global_from*(self: Vector3, unit: Unit): Vector3 =
  result = -self.local_to(unit)

proc init*(_: type Transform, origin = vec3()): Transform =
  result = init_transform()
  result.origin = origin

proc `+=`*(self: ZenValue[string], str: string) =
  self.value = self.value & str

proc origin*(self: ZenValue[Transform]): Vector3 =
  self.value.origin

proc `origin=`*(self: ZenValue[Transform], value: Vector3) =
  var transform = self.value
  transform.origin = value
  self.value = transform

proc basis*(self: ZenValue[Transform]): Basis =
  self.value.basis

proc `basis=`*(self: ZenValue[Transform], value: Basis) =
  var transform = self.value
  transform.basis = value
  self.value = transform

proc init*(_: type Basis): Basis = init_basis()

