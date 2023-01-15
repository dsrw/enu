type
  Thing = ref object

var a = Thing()
let b = a
let c = b

echo cast[int](a[].addr)
echo cast[int](b[].addr)
echo cast[int](c[].addr)

