name potato(length = 5, width = 2, color = red, label: string)

assert length == 5
assert self.length == 5
when not is_clone:
  assert potato.length == 5
self.length = 10
assert length == 10
potato.label = "red"
when not is_clone:
  assert label == "red"
  assert self.label == "red"
