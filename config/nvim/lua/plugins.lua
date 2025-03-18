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

  -- telescope
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'BurntSushi/ripgrep',
    }
  },
  {'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  -- lsp
  { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },
  { 'neovim/nvim-lspconfig' },
  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-nvim-lsp' },
}
