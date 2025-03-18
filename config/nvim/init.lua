vim.g.mapleader = ' '
vim.g.loaded_perl_provider = 0 -- disable Perl provider and warning
vim.loader.enable()
vim.opt.runtimepath:prepend(lazypath)

require 'config.lazy'

require 'config.autocommand'
require 'config.keymappings'
require 'config.options'
require 'config.netrw'
require 'config.windows'
require 'config.lsp'

-- Plugin configs
require 'config.plugins.bufferline'
require 'config.plugins.comment'
require 'config.plugins.lualine'
require 'config.plugins.luasnip'
require 'config.plugins.neogit'
require 'config.plugins.telescope'
