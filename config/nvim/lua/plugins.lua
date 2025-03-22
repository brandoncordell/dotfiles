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

  -- snippets
  { "rafamadriz/friendly-snippets" },
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    build = "make install_jsregexp",
    dependencies = { "rafamadriz/friendly-snippets" },
  },

  -- colorscheme
  { 'shaunsingh/nord.nvim' },

  -- lualine
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons'
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

  { 'numToStr/Comment.nvim' },

  -- lsp
  { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },
  { 'neovim/nvim-lspconfig' },
  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-nvim-lsp' },

  -- dashboard
  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup()
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },

  -- rails
  { 'tpope/vim-rails', ft = 'ruby' },
  {
    'kylechui/nvim-surround',
    version = '*',
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup()
    end
  },

  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = { }
  },
  -- git
  {
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },

  -- testing
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "olimorris/neotest-rspec",
      "zidhuss/neotest-minitest",
      "marilari88/neotest-vitest",
    },
  },

  -- pairs
  {
    'altermo/ultimate-autopair.nvim',
    event={'InsertEnter','CmdlineEnter'},
    branch='v0.6', --recommended as each new version will have breaking changes
    opts={
      --Config goes here
    },
  },

  { 'RRethy/nvim-treesitter-endwise' },
  { 'PriceHiller/nvim-ts-autotag' },
}
