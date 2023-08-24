vim.g.mapleader = ' '

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    '--single-branch',
    'https://github.com/folke/lazy.nvim.git',
    lazypath,
  }
end

vim.loader.enable()
vim.opt.runtimepath:prepend(lazypath)

require('lazy').setup('plugins', {
  defaults = { lazy = true },
  performance = {
    rtp = {
      disabled_plugins = {
        'gzip',
        'matchit',
        'matchparen',
        'tarPlugin',
        'tohtml',
        'tutor',
        'zipPlugin',
      },
    },
  },
})

require 'config.options'
require 'config.netrw'
require 'config.windows'
require 'config.colorscheme'
require 'config.lsp'

-- Plugin configs
require 'config.plugins.bufferline'
require 'config.plugins.comment'
require 'config.plugins.lualine'
require 'config.plugins.telescope'
require 'config.plugins.orgmode'
