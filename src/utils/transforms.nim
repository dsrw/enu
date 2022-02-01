import pkg / core / [transforms, godotcoretypes]
export transforms except `==`

proc `==`*(self: Transform; b: Transform): bool {.inline.} =
  self.origin == b.origin and self.basis == b.basis
