lock = true

turn 180
let blurb = "Here are some things you can build with Enu. Play with their code, or build something new from scratch."

let menu = """

- [Load Tutorial](<nim://load_level("tutorial-1")>) - Leave this level and load the Enu tutorial.

- [Load Inky: Isolation](<nim://load_level("tutorial-3")>) - Load `Inky: Isolation`, a simple game made with Enu.

- [Clear Changes and Reset Examples](<nim://reset_level()>) - Reset and reload this level. Be careful, all of your changes will be lost.

"""

let text = \"""

# Examples

{blurb}

- Load Tutorial
- Load `Inky: Isolation`
- Clear Changes and Reset Examples

"""

let more = \"""

# Menu

{blurb}

- [Load Tutorial](<nim://load_level("tutorial-1", "tutorial")>) - Leave this level and load the Enu tutorial.

- [Load Inky: Isolation](<nim://load_level("tutorial-2", "tutorial")>) - Load `Inky: Isolation`, a simple game made with Enu.

- [Clear Changes and Reset Examples](<nim://reset_level()>) - Reset and reload this level. Be careful, all of your changes will be lost.

"""

say text, more, height = 4, width = 3
