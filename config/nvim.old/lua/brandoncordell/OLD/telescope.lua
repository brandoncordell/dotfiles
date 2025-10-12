local telescope = require('telescope')
local builtin = require('telescope.builtin')

telescope.setup {
  pickers = {
    buffers = {
      theme = 'dropdown'
    },
    find_files = {
      theme = 'dropdown'
    },
    help_tags = {
      theme = 'dropdown'
    },
    live_grep = {
      theme = 'dropdown'
    },
  },

  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
    }
  }
}

-- Load extensions
telescope.load_extension('fzf')

-- Set up keybindings
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})