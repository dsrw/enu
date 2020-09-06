from sugar import dump, dup
import times, std/with, options

export dump, dup, times, with, options

### times ###

proc seconds*(s: float): TimeInterval {.inline.} =
  init_time_interval(milliseconds = int(s * 1000))

### options ###

converter toOption*[T](val: T): Option[T] =
  some(val)

converter toBool*[T](option: Option[T]): bool =
  option.is_some
