import nimib, nimibook
import enuib

nb_init(theme = use_enu)
nb_text: """

# Shorthand Commands

Many Enu command also have a 1 letter alias. These are harder to read, but can reduce friction for folks new to
typing.

The aliases are:

- `f` - `forward`
- `b` - `back`
- `l` - `left`
- `r` - `right`
- `u` - `up`
- `d` - `down`
- `t` - `turn`. Can be combined with shorthand directions, so `turn right` can be expressed as `t r`
- `o` - `while true:` (o was selected because its shape is a loop)
- `x` - `times`. `5.x:` will run a code block 5 times.

In action:

```nim
# draw a cube (with no top)
10.x:
  4.x:
    f 10
    t r
  u 1
```

"""
nb_save
