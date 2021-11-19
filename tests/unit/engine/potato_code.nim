name potato(length = 5, width = 2, color = red, label: string)

move mode
mode move
mode build
move me
m me
b me

t r
t l
f 1
t r


turn right

build me


assert length == 5
assert me.length == 5
when not is_clone:
  assert potato.length == 5
self.length = 10
assert length == 10
potato.label = "red"
when not is_clone:
  assert label == "red"
  assert self.label == "red"
