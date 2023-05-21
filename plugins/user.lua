return {
        "simrat39/rust-tools.nvim", -- add lsp plugin
        {
                "williamboman/mason-lspconfig.nvim",
                opts = {
                        ensure_installed = { "rust_analyzer" },
                },
        },
        {
                "kevinhwang91/nvim-bqf",
                event = { "BufRead", "BufNew" },
                config = function()
                        require("bqf").setup({
                                auto_enable = true,
                                preview = {
                                        win_height = 12,
                                        win_vheight = 12,
                                        delay_syntax = 80,
                                        border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
                                },
                                func_map = {
                                        vsplit = "",
                                        ptogglemode = "z,",
                                        stoggleup = "",
                                },
                                filter = {
                                        fzf = {
                                                action_for = { ["ctrl-s"] = "split" },
                                                extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
                                        },
                                },
                        })
                end,
        },
        {
                "AndrewRadev/bufferize.vim",
                lazy = false
        },
        {
                "iamcco/markdown-preview.nvim",
                build = "cd app && npm install",
                ft = "markdown",
                config = function()
                        vim.g.mkdp_auto_start = 1
                end,
        },
        {
                "phaazon/hop.nvim",
                event = "BufRead",
                config = function()
                        require("hop").setup()
                        vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
                        vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
                end,
        },
        {
                'mrjones2014/legendary.nvim',
                lazy = false,
                config = function()
                        require('legendary').setup({
                                which_key = {
                                        -- Automatically add which-key tables to legendary
                                        -- see ./doc/WHICH_KEY.md for more details
                                        auto_register = true,
                                        -- you can put which-key.nvim tables here,
                                        -- or alternatively have them auto-register,
                                        -- see ./doc/WHICH_KEY.md
                                        mappings = {},
                                        opts = {},
                                        -- controls whether legendary.nvim actually binds the keymaps,
                                        -- or if you want to let which-key.nvim handle the bindings.
                                        -- if not passed, true by default
                                        do_binding = true,
                                },
                        })
                end,
                -- sqlite is only needed if you want to use frecency sorting
                -- dependencies = { 'kkharji/sqlite.lua' }
        },
        {
                "catppuccin/nvim",
                name = "catppuccin",
                config = function()
                        require("catppuccin").setup {}
                end,
        },
}
