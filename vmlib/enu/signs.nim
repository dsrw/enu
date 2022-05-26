import std / [strutils, math]
import types, base_api

proc markdown*(self: Sign): string = discard
proc `markdown=`*(self: Sign, value: string) = discard

proc title*(self: Sign): string = discard
proc `title=`*(self: Sign, value: string) = discard

proc width*(self: Sign): float = discard
proc `width=`*(self: Sign, value: float) = discard

proc height*(self: Sign): float = discard
proc `height=`*(self: Sign, value: float) = discard

proc size*(self: Sign): int = discard
proc `size=`*(self: Sign, value: int) = discard

proc open*(self: Sign): bool = discard
proc `open=`*(self: Sign, value: bool) = discard
