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

  -- diagnostics
  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },

  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "LspAttach",
    priority = 1000, -- needs to be loaded in first
    config = function()
      require('tiny-inline-diagnostic').setup({
        preset = 'modern'
      })

      vim.diagnostic.config({
        severity_sort = true,
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = '●',
            [vim.diagnostic.severity.WARN] = '●',
            [vim.diagnostic.severity.HINT] = '●',
            [vim.diagnostic.severity.INFO] = '●',
          }
        },
        underline = false,
        update_in_insert = false,
        virtual_text = false
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
  { 'mhartington/formatter.nvim' },

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
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
    }
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
