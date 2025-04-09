local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- leader
config.leader = {
	key = "f",
	mods = "CTRL",
	timeout_milliseconds = 2000,
}

-- mouse
config.pane_focus_follows_mouse = true

-- scrollback
config.scrollback_lines = 5000

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
config.color_scheme = "nord"
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

-- tab bar
config.tab_bar_at_bottom = true
config.tab_max_width = 32
config.use_fancy_tab_bar = false

-- keymappings
config.keys = {
	--- tabs
	-- show tab navigator
	{
		key = "w",
		mods = "LEADER",
		action = wezterm.action.ShowTabNavigator,
	},
	-- create tab
	{
		key = "c",
		mods = "LEADER",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	-- name tab
	{
		key = ",",
		mods = "LEADER",
		action = wezterm.action.PromptInputLine({
			description = "Enter new name for tab",
			action = wezterm.action_callback(function(window, _, line)
				if line then
					window:active_tab():set_title(line)
				end
			end),
		}),
	},
	-- close tab
	{
		key = "x",
		mods = "LEADER",
		action = wezterm.action.CloseCurrentTab({ confirm = true }),
	},
	-- next tab
	{
		key = "n",
		mods = "LEADER",
		action = wezterm.action.ActivateTabRelative(1),
	},
	-- prev tab
	{
		key = "p",
		mods = "LEADER",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	--- panes
	-- vertical split
	{
		key = "|",
		mods = "LEADER|SHIFT",
		action = wezterm.action.SplitPane({
			direction = "Right",
			size = { Percent = 50 },
		}),
	},
	-- horizontal split
	{
		key = "-",
		mods = "LEADER",
		action = wezterm.action.SplitPane({
			direction = "Down",
			size = { Percent = 50 },
		}),
	},
  -- swap panes
  {
    -- |
    key = '{',
    mods = 'LEADER|SHIFT',
    action = wezterm.action.PaneSelect { mode = 'SwapWithActiveKeepFocus' }
  },
	-- zoom
	{
		key = "f",
		mods = "ALT",
		action = wezterm.action.TogglePaneZoomState,
	},
	-- scrollback/copy
	{
		key = "[",
		mods = "LEADER",
		action = wezterm.action.ActivateCopyMode,
	},
}

return config
