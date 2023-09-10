# TODO

There's a lot left to do before Enu 1.0. Here are some of the tasks planned
for the next year or so.

### Security and Sharing

Right now there's no easy way to download and play Enu worlds created by other
people. It can be done manually by copying a world into Enu's 
[config directory](intro/config.html), then updating the `world` property in
`config.json`, but at the moment Enu scripts can read, write, and delete files 
on your computer, so it's very important to only play an Enu world if you trust 
it completely. The same applies when playing 
[multiplayer](intro/multiplayer.html).

Sometime before 0.3, Enu will be updated to run in a sandbox, and the script 
engine will be locked down to restrict dangerous operations. When this is done
I'll make it easier to share worlds and find servers to connect to.

### Tutorials

More tutorials!

Tutorials!

### Games and Game Features

Write games, and add features to support them.

### Forward Arrow

Show an arrow pointing forward from the current draw point, so it 
will always be clear which way `forward` goes.

### Pivot point

Currently it isn't possible to change the pivot point for a unit, and the 
default point isn't properly centered for most builds, making it difficult to 
rotate builds nicely. Enu 0.3 will use the draw point for the pivot point, 
allowing it to be moved, and will shift everything over 0.5m, allowing most 
builds to rotate in a balanced way. There will also be a command to move the 
draw point (and thus the pivot point) in the exact center of a build.

### REPL

A REPL could be used to experiment, run commands, and change settings.

### Additional Platforms and App Stores

Shortly after 0.2 Enu will be made available on the Mac App Store and Steam. iOS
and iPadOS will likely be next, with Android and VR platforms following later.

### Graphics

Enu's graphics can be slow, especially when using lots of units.

### Other Stuff

Other stuff.
