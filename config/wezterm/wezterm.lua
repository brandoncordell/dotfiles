local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Rosé Pine (base16)'

config.font = wezterm.font("FiraCode Nerd Font", {weight=450, stretch="Normal", style="Normal"})
config.font_size = 14

return config