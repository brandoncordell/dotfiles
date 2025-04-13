-- workspaces config
local wezterm = require("wezterm")
local act = wezterm.action
local mux = wezterm.mux
local workspace_switcher = wezterm.plugin.require("https://github.com/MLFlexer/smart_workspace_switcher.wezterm")
local module = {}

local function init_events()
	wezterm.on("update-right-status", function(window, _)
		window:set_right_status(window:active_workspace())
	end)

	wezterm.on("gui-startup", function(cmd)
		wezterm.log_error(wezterm.home_dir .. "/dotfiles")
		local dotfiles_path = wezterm.home_dir .. "/dotfiles"

		local args = {}

		if cmd then
			args = cmd.args
		end

		local _, build_pane, _ = mux.spawn_window({
			workspace = "dotfiles",
			cwd = dotfiles_path,
			args = args,
		})

		build_pane:send_text("nvim\n")
		mux.set_active_workspace("dotfiles")
	end)
end

workspace_switcher.zoxide_path = os.execute("which zoxide")

function module.apply_to_config(config)
	init_events()

	table.insert(config.keys, {
		key = "s",
		mods = "LEADER",
		action = act.PromptInputLine({
			description = wezterm.format({
				{ Attribute = { Intensity = "Bold" } },
				{ Foreground = { AnsiColor = "Fuchsia" } },
				{ Text = "Enter name for new workspace" },
			}),

			action = wezterm.action_callback(function(window, pane, line)
				if line then
					window:perform_action(
						act.SwitchToWorkspace({
							name = line,
						}),
						pane
					)
				end
			end),
		}),
	})

	table.insert(config.keys, {
		key = "t",
		mods = "LEADER",
		action = act.ShowLauncherArgs({ flags = "FUZZY|WORKSPACES" }),
	})

	table.insert(config.keys, { key = "d", mods = "LEADER", action = act.SwitchToWorkspace({ name = "dotfiles" }) })
	table.insert(config.keys, { key = "[", mods = "LEADER", action = act.SwitchWorkspaceRelative(1) })
	table.insert(config.keys, { key = "]", mods = "LEADER", action = act.SwitchWorkspaceRelative(-1) })
end

return module
