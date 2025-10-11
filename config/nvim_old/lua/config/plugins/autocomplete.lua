local cmp = require("cmp")

cmp.setup({
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-Space>"] = cmp.mapping.complete(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	}, {
		{ name = "buffer" },
	}),
})

cmp.setup.cmdline({ "/", "?" }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" },
	},
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local language_servers = {
	"cssls",
	"emmet_language_server",
	"eslint",
	"html",
	"rubocop",
	"solargraph",
	"tailwindcss",
	"ts_ls",
	"volar",
}

for _, ls in pairs(language_servers) do
	require("lspconfig")[ls].setup({
		capabilities = capabilities,
	})
end
