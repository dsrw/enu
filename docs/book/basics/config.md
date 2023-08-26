# Config

The Enu data directory lives in `~/Library/Application Support/enu` on Mac, `%AppData%\enu` on Windows, and
`~/.local/share/enu` on Linux. `config.json` has a few configurable options:

`mega_pixels`: The render resolution, in mega pixels. Increase for more detail. Decrease for better performance.

`font_size`: The font size. DPI is currently ignored, so hidpi screens will require a higher number.

`dock_icon_size`: Size of the icons in the dock. DPI is currently ignored, so hidpi screens will require a higher number.

`world`: The world/project to load. Change this to create a new world.

`show_stats`: Show FPS and other stats.

`start_full_screen`: Whether to start Enu full screen, or in a window.

`semicolon_as_colon`: Both `;` and `:` will be interpreted as `:`, allowing `:` to be typed without shift. Sometimes useful for new typists.
