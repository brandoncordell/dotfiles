local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local util = require("formatter.util")

local htmlbeautifier_config = function()
	return {
		exe = "htmlbeautifier",
		args = {
			"--keep-blank-lines",
			"1",
		},
		stdin = true,
	}
end

require("formatter").setup({
	logging = true,
	-- log_level = vim.log.levels.WARN,
	filetype = {
		-- eruby = {
		-- 	require("formatter.filetypes.eruby").htmlbeautifier,
		-- 	htmlbeautifier_config,
		-- },
		--
		-- html = {
		-- 	require("formatter.filetypes.eruby").htmlbeautifier,
		-- 	htmlbeautifier_config,
		-- },

		javascript = {
			require("formatter.filetypes.javascript").prettier,
		},

		lua = {
			require("formatter.filetypes.lua").stylua,
		},

		ruby = {
			require("formatter.filetypes.ruby").rubocop,
		},

		typescript = {
			require("formatter.filetypes.typescript").prettier,
		},

		vue = {
			require("formatter.filetypes.vue").prettier,
		},

		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})

augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
	group = "__formatter__",
	command = ":FormatWriteLock",
})
