return {
  "isak102/ghostty.nvim",
  config = function()
    require("ghostty").setup({
      file_pattern = "*/ghostty/config",
      ghostty_cmd = "ghostty",
      check_timeout = 1000
    })
  end,
}
