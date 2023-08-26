import nimib, nimibook, pretty
import enuib

nb_init(theme = use_enu)
nb_text: """

# Actions

Procedures/functions in Enu are referred to as actions, mainly to avoid explaining the term procedure, subroutine, or
function, and to tie them to [Action Loops](#action-loops) defined below. Their syntax resembles markdown lists, and
have the same parameter rules as [prototype](#prototypes) names. That is, mostly the same
as Nim procs, but types can be omitted, making the parameter implicitly `auto`.

```nim
- hello(name):
  echo "hello ", name

- goodbye(name = "Vin"):
  echo "goodbye ", name

hello "Claire"
goodbye "Cal"
```

Action parameters are automatically shadowed by a variable with the same name and value, making them mutable within the
action. Enu tries to avoid the concept of immutable values.

It's also possible to specify a return type between the closing bracket of the parameter list and the colon:

```nim
- hello(name) string:
  "hello " & $name

echo hello("Scott")
```

However, at this point it's probably better to use a `proc`.

# Action Loops

*Note for Nimians: Action Loops are state machines, and any proc can be a state. If the proc has a return value it will
be discarded.*

Action Loops can help control the complexity of the logic for your units. They allow you to run complicated lists of
actions and switch between them easily when situations change.

You can create your own [actions](#actions), or you can call any of the built-in Enu [commands](#commands) like
`forward`, `back`, `turn`, `sleep`, etc.

"""
nb_save
