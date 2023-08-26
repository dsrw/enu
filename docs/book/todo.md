# TODO for 0.2

### Pivot point

Currently it isn't possible to change the pivot point for a unit, and the default point isn't properly centered for
most builds, making it difficult to rotate builds nicely. Enu 0.2 will use the draw point for the pivot point, allowing
it to be moved, and will shift everything over 0.5m, allowing most builds to rotate in a balanced way. There will
also be a command to move the draw point (and thus the pivot point) in the exact center of a build.

### REPL?

We need a way to switch worlds without editing a config file. Adding a REPL may be the easiest way to accomplish
this, and is something I wanted to add anyway.

### Testing and bug fixes

Enu has been under heavy development for a year without a great deal of testing, so there are undoubtedly bugs. I
believe these will be minor, but there are probably a fair number of them.

### v0.2.x - v0.3

- [ ] iOS support.
- [ ] Move script execution off the main thread.
- [ ] Inventory
- [ ] Settings UI
- [ ] Allow the editor pane and action bar to be resized from within Enu.
- [ ] Better collision support
- [ ] Blocks of any color
- [ ] In game help
- [ ] Easy way to switch worlds in-game
- [ ] Support loading worlds from anywhere, not just the Enu data directory
