name potato(length = 5, width = 2, color = red, label = "hi", friendly = true)

assert length == 5
assert me.length == 5
when not is_clone:
  assert potato.length == 5
me.length = 10
assert length == 10
potato.label = "red"
when not is_clone:
  assert label == "red"
  assert me.label == "red"
