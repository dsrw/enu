import engine/engine

let
  vmlib = "vmlib"
  e1 = Engine()
  e2 = Engine()

e1.load("scripts", "test1", "tests/scripts/test1.nim".read_file, vmlib)
e2.load("scripts", "test2", "tests/scripts/test2.nim".read_file, vmlib)

e1.expose "callback", proc(a: VmArgs): bool =
  assert a.get_string(0) == "test1"
  result = true

e2.expose "callback", proc(a: VmArgs): bool =
  assert a.get_string(0) == "test2"
  result = true

assert e1.run()
assert e2.run()

for i in 0..9:
  assert e1.resume()
  assert e2.resume()

assert not e1.resume()
assert not e2.resume()

echo "!!!!!!! RESTART !!!!!!!!!!"

assert e1.run()
assert e2.run()

for i in 0..9:
  assert e1.resume()
  assert e2.resume()

assert not e1.resume()
assert not e2.resume()
