local wezterm = require("wezterm")
local module = {}

function module.apply_to_config(config)
	-- fonts
	config.font_size = 15
	config.font = wezterm.font({
		family = "FiraCode Nerd Font",
		harfbuzz_features = { "zero" },
		stretch = "Normal",
		style = "Normal",
		weight = 350,
	})

	-- look & feel
	config.color_scheme = "nord"
	config.colors = {
		tab_bar = {
			active_tab = {
				bg_color = "#81a1c1",
				fg_color = "#073642",
				intensity = "Bold",
			},
			background = "#3b4252",
			inactive_tab = {
				bg_color = "#2e3440",
				fg_color = "#4c566a",
				italic = true,
			},
			new_tab = {
				bg_color = "#3b4252",
				fg_color = "#a3be8c",
			},
		},
	}

	-- mouse
	config.pane_focus_follows_mouse = true

	-- tab bar
	config.tab_bar_at_bottom = true
	config.tab_max_width = 32
	config.use_fancy_tab_bar = false

	-- window dressing
	config.window_background_opacity = 0.95
	config.window_frame = {
		active_titlebar_bg = "#00ffff",
		inactive_titlebar_bg = "#00ffff",
	}
	config.window_padding = {
		left = "2cell",
		right = "2cell",
		top = "1cell",
		bottom = "1cell",
	}
end

return module
