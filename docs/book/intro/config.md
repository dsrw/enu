# Config

The Enu data directory lives in `~/Library/Application Support/enu` on Mac, 
`%AppData%\enu` on Windows, and `~/.local/share/enu` on Linux. `config.json` has 
a few configurable options:

- `font_size`: The font size. DPI is currently ignored, so hidpi screens will 
  require a higher number.

- `dock_icon_size`: Size of the icons in the dock. DPI is currently ignored, so 
  hidpi screens will require a higher number.

- `world`: The world/project to load. Change this to create a new world. By
  default, this will be the `base_name` plus `-` and a number. Set to 
  `tutorial-1` by default.

- `show_stats`: Show FPS and other stats.

- `god_mode`: Makes hidden units slightly visible, and allows editing locked
  units.

- `mega_pixels`: The render resolution, in mega pixels. Increase for more 
  detail. Decrease for better performance.

- `start_full_screen`: Whether to start Enu full screen, or in a window.

- `semicolon_as_colon`: Both `;` and `:` will be interpreted as `:`, allowing
  `:` to be typed without shift. Sometimes useful for new typists.

- `world_prefix`: The base name that Enu will use when creating or loading
  a new level. Set to `tutorial` by default.

- `listen_address`: Set this to something reasonable, like `0.0.0.0`, to be a 
  server. Optionally you can add a `:` and a port number. Defaults to port 9632.

- `server_address`: Set this to an IP or host name to connect to a server. 
  Optionally you can add a `:` and a port number. Defaults to port 9632.

- `player_color`: The color of your avatar when in multiplayer. Set to a hex
  color (like `#ffffff`) or one of Enu's built in colors (`blue`, `red`,
  `green`, `black`, `white`, and `brown`). Defaults to a random color.

- `channel_size`: A debug option to configure the size of the channel between
  the worker and the view. 5000 by default. Increasing this may improve 
  performance at the cost of latency and memory usage. This option will probably
  go away in the future.
 
## Example

```json
{
  "font_size": 38,
  "dock_icon_size": 193.75,
  "world": "tutorial-1",
  "show_stats": true,
  "god_mode": false,
  "mega_pixels": 5.0,
  "start_full_screen": false,
  "semicolon_as_colon": false,
  "world_prefix": "tutorial",
  "listen_address": "",
  "server_address": "",
  "player_color": "#6495ED",
  "channel_size": 5000
}
```
