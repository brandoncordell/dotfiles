local theme_loaded, _ = pcall(require, "catppuccin")

if theme_loaded then
	vim.cmd.colorscheme("catppuccin")
end
