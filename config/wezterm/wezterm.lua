local wezterm = require("wezterm")
local action = wezterm.action
local config = wezterm.config_builder()

config.keys = {}

local look_and_feel = require("look_and_feel")
look_and_feel.apply_to_config(config)

local panes = require("panes")
panes.apply_to_config(config)

local tabs = require("tabs")
tabs.apply_to_config(config)

local workspaces = require("workspaces")
workspaces.apply_to_config(config)

-- leader
config.leader = {
	key = "f",
	mods = "CTRL",
	timeout_milliseconds = 2000,
}

-- scrollback
config.scrollback_lines = 5000
table.insert(config.keys, {
	key = "[",
	mods = "LEADER",
	action = action.ActivateCopyMode,
})

return config
