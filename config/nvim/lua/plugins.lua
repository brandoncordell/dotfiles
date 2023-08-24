return {
  {
    'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'
  },
  { 'shaunsingh/nord.nvim' },
  { 'nvim-lualine/lualine.nvim' },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'BurntSushi/ripgrep',
    }
  },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  {
    'akinsho/bufferline.nvim', version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons'
  },
  { 'numToStr/Comment.nvim' },
  {
    'VonHeikemen/lsp-zero.nvim', branch = 'v2.x',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  },
  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup()
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },
  {
    'nvim-orgmode/orgmode', ft = {'org'}
  },
  { 'akinsho/org-bullets.nvim' }
}
