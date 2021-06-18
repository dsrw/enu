name box2

def box(length=10, height=20):
  height.times:
    4.times:
      forward length
      turn_right()

box()
echo "BYE FROM ", self.name
