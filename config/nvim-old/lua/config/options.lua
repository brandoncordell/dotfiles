vim.opt.encoding = 'utf-8'

vim.opt.autoindent = true
vim.opt.autowrite = true
vim.opt.backspace = '2'
vim.opt.backup = false
vim.opt.colorcolumn = '100'
vim.opt.complete:append('kspell')
vim.opt.completeopt = 'menu'
vim.opt.history = 50
vim.opt.incsearch = true
vim.opt.laststatus = 2
vim.opt.modelines = 0
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = true
vim.opt.showcmd = true
vim.opt.smartcase = true
vim.opt.smarttab = true
vim.opt.wrap = false -- set nowrap

-- Softtabs, 2 spaces
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- Treat <li> and <p> tags like blocks
vim.g.html_indent_inctags = 'html,body,head,tbody,p,li'

-- Set tags for vim-fugitive
vim.opt.tags:prepend('.git/tags')
