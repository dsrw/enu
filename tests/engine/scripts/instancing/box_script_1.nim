name Box1
import typetraits
echo "SELF: ", self.type.name
def box(length=10, height=20):
  height.times:
    4.times:
      forward length
      turn_right()

box()
echo "BYE FROM BOX ", self.name
