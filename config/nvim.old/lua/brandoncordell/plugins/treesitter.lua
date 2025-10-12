return {
    'nvim-treesitter/nvim-treesitter',
    branch = 'master',
    lazy = false,
    build = ':TSUpdate',
    lazy = vim.fn.argc(-1) == 0, -- Load treesitter early when opening a file from the cmdline
    event = { 'LazyFile', 'VeryLazy' },
    cmd = { 'TSUpdate', 'TSInstall', 'TSLog', 'TSUninstall' },
    opts = {
        auto_install = true,
        ensure_installed = {
            'bash',
            'c_sharp',
            'clojure',
            'cmake',
            'comment',
            'css',
            'csv',
            'diff',
            'dockerfile',
            'editorconfig',
            'eex',
            'elixir',
            'elm',
            'git_config',
            'git_rebase',
            'gitattributes',
            'gitcommit',
            'gitignore','
            'go',
            'gpg',
            'graphql',
            'haskell',
            'html',
            'http',
            'ini',
            'javascript',
            'jinja',
            'jinja_inline',
            'jq',
            'jsdoc',
            'json',
            'liquid',
            'lua',
            'luadoc',
            'markdown',
            'muttrc',
            'nginx',
            'php',
            'phpdoc',
            'python',
            'rbs',
            'readline',
            'regex',
            'ruby',
            'rust',
            'scss',
            'sql',
            'terraform',
            'toml',
            'tsx',
            'typescript',
            'typespec',
            'vim',
            'vimdoc',
            'vue',
            'yaml'
        },
        folds = { enable = true },
        indent = { enable = true },
        highlight = { enable = true },
        sync_install = true,

        config = function(_, opts)
            local TS = require('nvim-treesitter')
            TS.setup(opts)

            -- install missing parsers
            local install = vim.tbl_filter(function(lang)
                return not TS.get_installed(lang, true)
            end, opts.ensure_installed or {})

            if #install > 0 then
                TS.install(install, { summary = true }):await(function()
                    vim.api.nvim_echo({
                        { "Finished installing treesitter parsers\n", "MoreMsg" },
                    }, true, {})
                end)
            end
