vim.g.mapleader = " "
vim.g.loaded_perl_provider = 0 -- disable Perl provider and warning
vim.loader.enable()

require("config.lazy")
require("config.lsp")

require("config.autocommand")
require("config.keymappings")
require("config.options")
require("config.netrw")
require("config.windows")
require("config.colorscheme")
require("config.transparency")

-- Plugin configs
require("config.plugins.autocomplete")
require("config.plugins.bufferline")
require("config.plugins.comment")
require("config.plugins.formatter")
require("config.plugins.lualine")
-- require("config.plugins.luasnip")
require("config.plugins.neotest")
require("config.plugins.telescope")
-- require 'config.plugins.which-key'
