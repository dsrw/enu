import nimib, nimibook
import enuib

nb_init(theme = use_enu)
nb_text: """

# Loops

An Action Loop always has one and only one current action, which it will call repeatedly until you switch to some
other action. The default action is `nil`. The first thing a loop must do is switch from `nil` to another action, using
the little switch arrow `->`.

```nim
loop:
  nil -> forward
  # I'll go forward forever!
```

The little switch arrow (`->`) will switch from the action on the left to the action on the right if it's encountered
and the left action has just completed. If the loop goes through and no switches match, the current action will be
run again.

We can control which switches get run by putting them in `if` statements.

```nim
loop:
  nil -> forward
  if player.far:
    forward -> back
  if player.near:
    back -> forward
```

In the above example, the loop immediately switches to `forward`, and will go forward indefinitely until one of the
conditions is met and the action is switched to something else. If the player gets too far away (more than 100m) and
the action is `forward`, the action will be switched to `back`. If the player is near (5m) and the action is `back`,
it will switch to `forward`. However, if the player is near and the action is `forward`, nothing will change. The
`if player.near` statement will be true, but `back -> forward` is ignored, since the current action isn't `back`.

If you want your loop to end at some point, you can switch back to `nil`:

```nim
loop:
  nil -> forward(10) # Some actions can take additional parameters.
  forward -> nil
  # I'll run `forward(10)` a single time, then stop and end the loop.
```

Let's look at something more complicated, and introduce the big switch arrow (`==>`) and change actions.

```nim
- wander:
  speed = 1
  forward 5..10
  turn -45..45

- charge:
  speed = 5
  turn player
  forward 1

- flee:
  speed = 3
  turn -player
  forward 1

- attack:
  player.bounce 5
  turn 360

var health = 3

loop:
  nil -> wander
  if 1 in 50:
    # when each `wander` action finishes, there's a 1 in 50 (2%) chance of our unit getting a sudden
    # burst of energy and switching to the `charge` action. Otherwise we just keep wandering.
    wander -> charge

  if health == 0:
    # we died. Exit the loop. We want this to happen immediately, not after the action finishes, so we use
    # the big switch arrow. We use the special `any` action to say that this should happen regardless
    # of the running action.
    any ==> nil

  if player.hit:
    # if the player touches us while we're wandering, we flee. We want it to happen the instant the player touches us,
    # not when our current `wander` is done, so we use the big switch arrow
    wander ==> flee:
      # this is a change action. If the action switches here, the change action will also run once.
      health -= 1
    # if the player touches us while we're charging, we attack immediately.
    charge ==> attack

  if player.far:
    # if we're fleeing the player, we go back to wandering when they get far away
    flee -> wander

  # Switch to wander when our attack is done. We always want this to happen, so it isn't in a
  # conditional. It only does anything if the current action is `attack`, and we only do it when
  # the attack is done becuase we're using the little switch arrow
  attack -> wander

```


"""
nb_save
