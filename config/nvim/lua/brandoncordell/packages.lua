-- utils
function githubUrl(repo)
	return "https://github.com/" .. repo
end

function githubPackages(repos)
	for i, repo in pairs(repos) do
		repos[i] = { src =  githubUrl(repo) }
	end

    return unpack(repos)
end

-- packages
vim.pack.add({
    githubPackages({
        "shaunsingh/nord.nvim",
        "nvim-treesitter/nvim-treesitter",
        "nvim-mini/mini.nvim",
        "catppuccin/nvim",
    })
})
