return {
  -- treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    dependencies = {
      'RRethy/nvim-treesitter-endwise',
      'PriceHiller/nvim-ts-autotag',
    },
    config = function()
      local configs = require('nvim-treesitter.configs')

      configs.setup({
        autotag = { enable = true },
        endwise = { enable = true },
        ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query', 'elixir', 'javascript', 'html', 'ruby', 'typescript' },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },
}
