vim.keymap.set("n", "<leader>up", ":update<CR> :source<CR>")
vim.keymap.set("n", "-", ":Ex<CR>")
vim.keymap.set("n", ";", ":")

-- easier window movements
vim.keymap.set("n", "<C-h>", "<C-w><C-h>")
vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
vim.keymap.set("n", "<C-k>", "<C-w><C-k>")
vim.keymap.set("n", "<C-l>", "<C-w><C-l>")

-- file finding
vim.keymap.set("n", "<leader>ff", ":Pick files<CR>")
vim.keymap.set("n", "<leader>fg", ":Pick grep_live<CR>")
vim.keymap.set("n", "<leader>fp", ":Pick git_files<CR>")
