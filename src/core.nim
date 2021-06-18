### Sugar ###
from sugar import dup
import std/with, strformat, strutils, sequtils, sets, tables, times, std/monotimes
export dup, with, strformat, strutils, sequtils, sets, tables

### Debug
from sugar import dump
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
import times
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

converter to_option*[T](val: T): Option[T] =
  some(val)

converter to_bool*[T](option: Option[T]): bool =
  option.is_some

proc optional_get*[T](self: var HashSet[T], key: T): Option[T] =
  if key in self:
    result = some(self[key])
  else:
    result = none(T)

### Vector3 ###
import core/godotcoretypes, core/vector3, math

proc vec3*(x, y, z: int): Vector3 {.inline.} =
  vec3(x.float, y.float, z.float)

proc trunc*(self: Vector3): Vector3 {.inline.} =
  vec3(trunc(self.x), trunc(self.y), trunc(self.z))

proc inverse_normalized*(self: Vector3): Vector3 {.inline.} =
  (self - vec3(self.length, self.length, self.length)) * -1

proc first*[T](arr: openArray[T], test: proc(x: T): bool): Option[T] =
  for item in arr:
    if test(item):
      return some(item)

### string ###
proc w*(str: string): seq[string] = str.split_whitespace()
