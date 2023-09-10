# Arrows

## `->` Little Switch Arrow

Switches from one command to another, after the first command has finished
running.

```nim
draw_box -> draw_stairs
```

## `==>` Big Switch Arrow

Switches from one command to another immediately. Will interrupt the running
command.

```nim
if player.near:
  sleep ==> offer_quest
```
