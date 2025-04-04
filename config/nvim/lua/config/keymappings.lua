vim.keymap.set('n', ';', ':') -- Less shift for productivity
vim.keymap.set('n', '<Leader><Leader>', '<C-^>') -- Quickly switch between the last two files
vim.keymap.set('n', '<Leader>hl', ':set nohlsearch<CR>') -- Clear search highlights

vim.keymap.set('n', '<C-[>', '<cmd>lua vim.diagnostic.jump({ count = -1 })<CR>')
vim.keymap.set('n', '<C-]>', '<cmd>lua vim.diagnostic.jump({ count = 1 })<CR>')
