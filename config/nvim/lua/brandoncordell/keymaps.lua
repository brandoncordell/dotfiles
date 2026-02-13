local map = vim.keymap.set

map("n", "<leader>up", ":update<CR> :source<CR>")
map("n", "-", ":Ex<CR>")
map("n", ";", ":")

-- easier window movements
map("n", "<C-h>", "<C-w><C-h>")
map("n", "<C-j>", "<C-w><C-j>")
map("n", "<C-k>", "<C-w><C-k>")
map("n", "<C-l>", "<C-w><C-l>")

-- clear highlight search
map("n", "<Leader>hl", ":nohlsearch<CR>")


