local treesitter = require('nvim-treesitter')

local languages = {
  "arduino",
  "bash",
  "css",
  "diff",
  "dockerfile",
  "editorconfig",
  "eex",
  "elixir",
  "git_config",
  "git_rebase",
  "gitattributes",
  "gitcommit",
  "gitignore",
  "go",
  "gomod",
  "goctl",
  "gosum",
  "gotmpl",
  "gowork",
  "html",
  "http",
  "javascript",
  "jq",
  "jsdoc",
  "json",
  "json5",
  "jsonc",
  "liquid",
  "lua",
  "luadoc",
  "luap",
  "markdown",
  "markdown_inline",
  "mermaid",
  "nginx",
  "printf",
  "query",
  "regex",
  "ruby",
  "rust",
  "scss",
  "ssh_config",
  "sql",
  "terraform",
  "toml",
  "tsx",
  "typescript",
  "vim",
  "vimdoc",
  "vue",
  "yaml",
  "zsh",
}

treesitter.install(languages)

vim.api.nvim_create_autocmd('FileType', {
  pattern = languages,
  callback = function()
    -- syntax highlighting, provided by Neovim
    vim.treesitter.start()
    -- indentation, provided by nvim-treesitter
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
