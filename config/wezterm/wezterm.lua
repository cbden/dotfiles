local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Tokyo Night'
config.font = wezterm.font('Iosevka Term', { weight = 'Regular', italic = false })
config.font_size = 22
config.initial_cols = 120
config.initial_rows = 35
config.window_decorations = "RESIZE"
config.enable_tab_bar = false

return config