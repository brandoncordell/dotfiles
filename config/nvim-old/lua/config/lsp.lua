require("mason").setup({})

-- setup language servers
require("mason-lspconfig").setup({
	ensure_installed = {
		"cssls",
		"eslint",
		"html",
		"lua_ls",
		"rubocop",
		"solargraph",
		"tailwindcss",
		"ts_ls",
	},
	handlers = {
		function(server_name)
			vim.lsp.enable(server_name)
		end,
	},
})

--cssls
--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

vim.lsp.config("cssls", {
	capabilities = capabilities,
})

-- lua_ls
vim.lsp.config("lua_ls", {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = {
		{ ".luarc.json", ".luarc.jsonc" },
		".git",
	},
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},

			-- Make the server aware of Neovim runtime files
			workspace = {
				checkThirdParty = false,
				library = {
					vim.env.VIMRUNTIME,
				},
			},
		},
	},
})
