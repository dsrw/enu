lock = true
color = white

var test_mode = false

var sign = md("# Welcome to Enu!", size = 460, billboard = true)

var bot_id = ""
var maze: MazeType
sign.show = false

proc get_bot: Bot =
  # each time the code for the bot is reloaded we need to
  # grab a new reference to it. Eventually an easy way to
  # do this will be built in.
  for bot in Bot.all:
    if test_mode and bot.id != me.id:
      return bot
    elif not test_mode and bot.id == bot_id:
      return bot

proc say(title = "", width = 0.0, height = 0.0, body = "") =
  if width > 0.0: sign.width = width
  if height > 0.0: sign.height = height
  if body != "": sign.markdown = body
  if title != "": sign.title = title
  sign.show = true

- setup:
  reset()
  position = position + LEFT
  speed = 10
  turn player
  sign.position = position + (UP * 2.0) + (LEFT * 1.2)

- approach:
  sleep 2
  say "- Hi!", 1.5, 0.5
  sleep 2
  forward 8
  turn player
  sleep 1

  say "- Welcome to **Enu**!", 4.0, 0.6
  sleep 1.5
  say "- Click this text for a short tutorial.", 3.5, 1.5

  while not sign.open: turn(player)

- movement_info:
  say "...", 0.5, 0.5, """

# Welcome to Enu!

Enu is a 3D world where you can code and create almost anything using a
programming language called [Nim](https://nim-lang.org). It's a place to make
games, experiment, and learn to code. You're using an early prototype that's
missing important features and is full of bugs, but it's getting better quickly.
Please contact me at [dsrw@me.com](mailto:dsrw@me.com) if you have any questions
or suggestions.

In this tutorial you'll learn to move and do some simple coding. In later
tutorials we'll make towers, tunnels, characters, and will finish with a 3D
survival game called `Inky: Isolation`.

Move with the `W`, `A`, `S`, and `D` keys, or with the left stick of your game
controller. Look around with the mouse, trackpad, or right stick of your game
controller.

You can close this window by pressing `ESC` on your keyboard or `B` on your
controller, and can come back at any time by clicking on the text block next to
the `Bot`. You can also move without closing the window by using your
controller, or by holding down `alt/option (⌥)` on your keyboard.

Sneak behind the `Bot` to continue the tutorial.

  """

  while me.angle_to(player).abs notin 150..210:
    sleep 0.5

- flying_info:
  say "- Good!", 2.0, 0.5, """

# Jumping and Flying

Jump with the `space` bar, or the `A` button on your game controller.

Fly by jumping twice quickly. Fly upwards by holding the jump button, and
downwards by holding crouch (`C` on the keyboard or `B` on a game controller).
Return to the ground by pressing the `jump` button twice.

Flying is a great way to see things from a better angle and to zip around your
world at high speed. It also lets you move through objects and blocks, so if you
ever get yourself stuck you can probably fly your way out.

Jump, fly, then returning to the ground to continue the tutorial.

  """

  speed = 1
  turn player
  sign.open = true
  while not player.flying: sleep()

- flying_done:
  say "- Now drop!", 2.5, 0.5
  while player.flying: sleep()

- good_job:
  sign.open = false
  say "- Good Job!", 2.5, 0.5, "# Good Job!"
  sleep 2

- tool_info:
  say "- Switch to `Place Bot`", 3.0, 1.0, """

    # Changing tools

Tools are selected from the `Tool Bar` on the bottom of the screen.

Change tools with the keyboard keys `1` - `8`, the `L1` and `R1` controller
buttons, or by releasing the mouse with `ESC` and selecting a tool with the
mouse pointer.

Enu currently has 8 tools. Tool `1` on the left is the `Code` tool. It can
program almost anything in Enu, and will be explained in detail later. Tool `8`
on the right is the `Place Bot` tool. Use it to fill your world with friendly
robots. Tools `2` - `7` are the `blue`, `red`, `green`, `black`, `white`, and
`brown` colored blocks.

Select the `Place Bot` tool to continue the tutorial.

  """

  sign.open = true
  while player.tool != PlaceBot: sleep()
  sleep 0.5

- bot_info:
  say "- Place a `Bot`", 3.0, 0.6, """

# Bots

`Bots` are NPCs in Enu, and can be programmed to explore, change their
appearance, or offer information.

They can be placed with the `left` mouse button or the `R1` gamepad trigger.

Place a `Bot` on the ground to continue the tutorial.

  """

  sign.open = true
  var last_bot_frame = frame_count()
  var og_bot_count = Bot.all.len

  while Bot.all.len <= og_bot_count: turn player
  for bot in Bot.all:
    if bot.frame_created > last_bot_frame:
      last_bot_frame = bot.frame_created
      bot_id = bot.id

- draw_maze:
  var bot = get_bot()
  turn bot
  maze = Maze.new(global = true)
  maze.show = true
  maze.rotation = 0
  maze.position = bot.position + (LEFT * 4.0)  + (FORWARD * 1.0)

  while not maze.finished:
    sleep 0.5
  sleep 1

- code_info:
  say("- Coding", 2.0, 0.5, """

# Coding Enu

We control Enu using [Nim](https://nim-lang.org), a powerful programming
language that's useful for a wide variety of tasks. Almost everything in Enu
can be coded with Nim. Let's start by teaching our `Bot` to walk to the end of
the course.

Switch to the `Code` tool to continue the tutorial.

  """)

  sign.open = true
  while player.tool != CodeMode:
    turn player
  sleep 0.5

- open_code:
  say(body = """

# Coding Enu

With the `Code` tool selected, you can code anything you've created by clicking
on it with the `left` mouse button, or `R1` on the controller

Open the code for your `Bot` to continue the tutorial.

  """)

  sign.open = true
  var bot = get_bot()

  while player.coding != bot:
    turn player
  sleep 0.5

- bot_navigation:
  say(body = """

# Coding Bots

We control the bot with simple commands like `forward` and `turn`. Here's some
code to get our `Bot` partway through the course:

```nim
forward 17
turn right
forward 10
turn left
```

Please finish the code to get the `Bot` get to the end of the course.

Run your code by pressing `alt/option (⌥)`. Keep `alt/option (⌥)` held down to
move around while you're coding. Flying is a great way to get yourself into
position so you can better see what's happening, so try double jumping to get a
better view.

If your `Bot` is moving too slowly for your tastes, make her run by setting the
`speed` value.

```nim
speed = 10

forward 17
turn right
forward 10
turn left
```

Good luck! We'll conclude this tutorial when your `Bot` goes past the
`FINISH HERE!` sign at the end of the course.

  """)

  sign.open = true
  var bot = get_bot()
  while maze.position.x - bot.position.x < 5:
    bot = get_bot()
    turn bot

- win:
  maze.won = true
  say("- Great Job!", 3.0, 0.5, "# Great Job!")
  sleep 15
  say "- All Done!", 2.5, 0.5, """

# Great Job!

Good work! You learned the basics of Enu, and you coded your first robot.
There's a lot more to come. Everything here - the signs, the course, the giant
spinning confetti monster, were created with `Nim` code inside Enu, and we'll
cover how to do all of it in future tutorials.

This is supposed to be where you move to the next tutorial, but it hasn't been
written yet. For now, click [HERE](<nim://player.god = true;sign.open = false>)
to turn on `God Mode`, which will let you see and modify the code for this
tutorial. It's a bit of a mess, but some folks might find it interesting. Or
click [HERE](<nim://press_action("next_world")>) to load `Inky: Isolation`, a
simple game written in Enu that's loosley inspired by **Alien: Isolation**, but
features Inky, the blue ghost from Pac-Man.

Contact me at [dsrw@me.com](mailto:dsrw@me.com) if you have any questions or
suggestions. Thanks for trying Enu!

  """

  sign.open = true

loop:
  nil -> setup
  if test_mode:
    setup -> draw_maze
  else:
    setup -> approach

  approach -> movement_info
  movement_info -> flying_info
  flying_info -> flying_done
  flying_done -> good_job
  flying_done -> good_job
  good_job -> tool_info
  tool_info -> bot_info
  bot_info -> draw_maze
  draw_maze -> code_info
  code_info -> open_code
  open_code -> bot_navigation
  bot_navigation -> win
  win -> nil