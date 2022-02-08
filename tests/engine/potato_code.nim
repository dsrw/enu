name potato(length = 5, width = 2, color = red, label = "hi", friendly = true)

assert me.length == 5
assert potato.length == 5
me.length = 10
potato.label = "red"
assert me.label == "red"
