local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Case-insensitive tab completion for the cmdline
autocmd('CmdLineEnter', { command = 'set ignorecase' })
autocmd('CmdLineLeave', { command = 'set noignorecase' })
