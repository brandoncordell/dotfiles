local wezterm = require("wezterm")
local action = wezterm.action
local module = {}

function module.apply_to_config(config)
	table.insert(config.keys, {
		-- show tab navigator
		key = "w",
		mods = "LEADER",
		action = action.ShowTabNavigator,
	})

	table.insert(config.keys, {
		-- create tab
		key = "c",
		mods = "LEADER",
		action = action.SpawnTab("CurrentPaneDomain"),
	})

	table.insert(config.keys, {
		-- name tab
		key = ",",
		mods = "LEADER",
		action = action.PromptInputLine({
			description = "Enter new name for tab",
			action = wezterm.action_callback(function(window, _, line)
				if line then
					window:active_tab():set_title(line)
				end
			end),
		}),
	})

	table.insert(config.keys, {
		-- close tab
		key = "x",
		mods = "LEADER",
		action = action.CloseCurrentTab({ confirm = true }),
	})

	table.insert(config.keys, {
		-- next tab
		key = "n",
		mods = "LEADER",
		action = action.ActivateTabRelative(1),
	})

	table.insert(config.keys, {
		-- prev tab
		key = "p",
		mods = "LEADER",
		action = action.ActivateTabRelative(-1),
	})
end

return module
