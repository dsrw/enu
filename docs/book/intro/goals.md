# Goals

Enu is meant for anyone who wants to explore, experiment, or make games, but particular care has been taken to make
it usable by younger people who may struggle with reading or typing. However, rather than bypassing the keyboard with
a Scratch-like visual programming language, Enu attempts to reduce and simplify the keystrokes required for a text-based
language, while (hopefully) preserving most of the flexibility text-based code offers.

With this in mind, Enu tries to:

- Reduce nesting. Indentation can be tricky for new programmers.
- Reduce the use of the shift key. Lower case is used almost everywhere. Commands are written to
  avoid underscores and parenthesis. By default (for now at least), a `;` keypress is interpreted as `:`, as colons are
  required frequently in Nim (and require shift, at least on US English keyboards) while semi-colons are not.

- Omit or shorten identifier names. `me` instead of `self/this`. `-` instead of `proc`. `5.times:` or `5.x:` instead of
  `for i in 0..5:`. Single letter shortcuts for many common commands.

- Pretends to avoid types. Enu code is Nim code and is statically typed, but a fair amount of effort has been spent
  hiding this fact. Types are great, but are confusing for new programmers.

- Spatial organization. No files. Code is text, but it's accessed through an object in the virtual world.

- Avoids events. Tries to make all flow based on loops and conditionals.
