---@brief
---
--- https://github.com/JohnnyMorganz/StyLua
---
--- A deterministic code formatter for Lua 5.1, 5.2, 5.3, 5.4, LuaJIT, Luau and CfxLua/FiveM Lua

---@type vim.lsp.Config
vim.lsp.config("stylua", {
	cmd = { "stylua", "--lsp" },
	filetypes = { "lua" },
	root_markers = { ".editorconfig", ".stylua.toml", "stylua.toml" },
})
