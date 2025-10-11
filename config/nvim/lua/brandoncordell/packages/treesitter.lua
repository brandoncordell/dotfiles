local installed, config = pcall(require, "nvim-tresitter.configs")

if installed then
  config.setup({
    ensure_installed = {
      "c",
      "lua",
      "vim",
      "vimdoc",
      "query",
      "markdown",
      "markdown_inline"
    },
    auto_install = false,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false
    }
  })
end
