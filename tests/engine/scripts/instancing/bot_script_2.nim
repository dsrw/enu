var b = bot1.new(global = false)

echo "from bot2 ", b.speed
assert b.named_property == "myprop"

b = bot1.new(named_property = "testing")
# TODO: verify this works:
# assert b.named_property == "testing"
assert bot1_cradle.named_property == "testing"

echo "passed"
