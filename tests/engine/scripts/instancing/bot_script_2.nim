name bot2
#var b = bot1.new(global = false)

echo "from bot2"
var b = bot1.new(global = false)
assert b.named_property == "myprop"
echo b.named_property
b = bot1.new(named_property = "testing")
assert b.named_property == "testing"
echo b.named_property
#
# echo "passed"
