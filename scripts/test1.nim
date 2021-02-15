proc callback*(name: string) = discard
proc finished*() = discard
echo "running test1"
for i in 0..10:
  echo "test1 ", i
  callback("test1")

echo "test1 done"
finished()
