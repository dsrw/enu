from sugar import dump, dup
import times, std/with, options

export dump, dup, times, with, options

proc seconds*(s: float): TimeInterval {.inline.} =
  init_time_interval(milliseconds = int(s * 1000))
