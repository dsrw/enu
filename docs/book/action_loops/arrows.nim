import nimib, nimibook
import enuib

nb_init(theme = use_enu)
nb_text: """

## `->` Little Switch Arrow

Switches from one action to another, after the first action has finished running.

```nim
draw_box -> draw_stairs
```

## `==>` Big Switch Arrow

Switches from one action to another immediately. Will interrupt the running action.

```nim
if player.near:
  sleep ==> offer_quest
```

"""
nb_save
