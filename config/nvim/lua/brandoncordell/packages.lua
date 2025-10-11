-- utils
function githubUrl(repo)
	return "https://github.com/" .. repo
end

function githubPackages(repos)
	for i, repo in ipairs(repos) do
		repos[i] = { src = githubUrl(repo) }
	end

	return repos
end

-- packages
vim.pack.add(githubPackages({
	"shaunsingh/nord.nvim",
	"nvim-treesitter/nvim-treesitter",
	"nvim-mini/mini.nvim",
	"catppuccin/nvim",
}))
