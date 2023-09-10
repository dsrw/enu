import nimib, nimibook
import enuib

nb_init(theme = use_enu)
nb_text: """

# More about Command Loops

### `as`

Sometimes you want to run the same command in different situations and switch to
or from it with a different name. You could do this by creating a new command
that calls the first one, but you can also use `as` to give a command a
different name.

```nim
# explore command and health var not shown.
- flee(distance = 100):
  turn -player
  forward distance

loop:
  nil -> explore

  if player.near and health > 2:
    explore -> flee

  elif player.near and health <= 2:
    explore ==> flee(200) as fly_you_fool

  if player.far(25):
    flee -> explore

  if player.far(150):
    fly_you_fool -> explore
```

### Special from commands

Often loops will switch from a single command to another. However, sometimes you
want to allow switching from a variety of commands.

- `any -> some_command` - switch from any command to the target command. This
  will switch (and run any switch block) even if we're already running the
  target command. In this example we used a little switch arrow, so it still
  won't happen until the current command actually completes.

- `others -> some_command` - Same as `any`, but it excludes the target command.

- `(command1, command2)` - Multiple from cmmands can be supported by putting
  them in a tuple.

- `(any, -command2, -command3)` - Switch from any command except `command2` and
  `command3`.

### When do command loops run?

A command loops will run whenever the current command finishes. In addition,
command loops will run every 0.5 seconds, and when something "interesting"
happens. Currently only the start and end of a collision with the player
will cause the loop to be run immediately, but this will be expanded.

When using child loops, the top level loop runs first, then walks down the stack
of loops until the current loop is reached.

"""
nb_save
