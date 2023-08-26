import nimib, nimibook
import enuib

nb_init(theme = use_enu)
nb_text: """

## More about Action Loops

### `as`

Actions are just procedures, and they can take parameters. Sometimes you want to run the same action
in different situations with a different action name. You could do this by creating a new action that
calls the first one, but you can also use `as` to give an action a different name.

```nim
# explore action and health var not shown.
- flee(distance = 100):
  turn -player
  forward distance

loop:
  nil -> explore
  if player.near and health > 2:
    explore -> flee
  elif player.near and health <= 2:
    explore ==> flee(200) as really_flee
  if player.far:
    flee -> explore
  if player.far(150):
    really_flee -> explore
```

### Special from actions

Often loops will switch from a single action to another. However, sometimes you want to allow switching from
a variety of actions.

- `any -> some_action` - switch from any action to the target action. This will switch (and run any change action)
  even if we're already running the target action. In this example we used a little switch arrow, so it still won't
  happen until the current action actually completes.
- `others -> some_action` - Same as `any`, but it excludes the target action.
- `(action1, action2)` - Multiple from actions can be supported by putting them in a tuple.
- `(any, -action2, -action3)` - Switch from any action except `action2` and `action3`.

### When do action loops run?

An action loops will run whenever its executing action finishes. In addition, action loops will run
every 0.5 seconds, and when something triggers an interrupt. Currently only the start and end of a collision with the
player trigger an interrupt, but this will be expanded.

When using child loops, the top level loop runs first, then walks down the stack of loops until the currently executing
loop is reached.

"""
nb_save
