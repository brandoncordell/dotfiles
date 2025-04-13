local wezterm = require("wezterm")
local action = wezterm.action
local module = {}

function module.apply_to_config(config)
	table.insert(config.keys, {
		-- vertical split
		key = "|",
		mods = "LEADER|SHIFT",
		action = action.SplitPane({
			direction = "Right",
			size = { Percent = 50 },
		}),
	})

	table.insert(config.keys, {
		-- horizontal split
		key = "-",
		mods = "LEADER",
		action = action.SplitPane({
			direction = "Down",
			size = { Percent = 50 },
		}),
	})

	table.insert(config.keys, {
		-- swap panes
		key = "{",
		mods = "LEADER|SHIFT",
		action = action.PaneSelect({ mode = "SwapWithActiveKeepFocus" }),
	})

	table.insert(config.keys, {
		-- zoom
		key = "f",
		mods = "ALT",
		action = action.TogglePaneZoomState,
	})
end

return module
