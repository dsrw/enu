# Action Loops

Action loops let you control the behavior of a unit in a (somewhat) straightforward way. At least I think it's straightforward. You might disagree.

They look like this:

```nim
- boogie:
  position = position.fuzzed(0.5)

- shake:
  left 1
  right 1

- rest:
  sleep 5

loop:
  nil -> shake
  if player.near:
    shake -> boogie
  elif player.far(50):
    (rest, boogie) -> shake
  elif player.far(200):
    (boogie, shake) -> rest
```
