return {
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
                        vim.api.nvim_set_keymap("v", "s", "<cmd>HopChar1<cr>", { silent = true })
                        vim.api.nvim_set_keymap("n", "s", ":HopChar1<cr>", { silent = true })
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
                "lambdalisue/suda.vim",
                lazy = false,
        },
        {
                "nvim-pack/nvim-spectre",
                lazy = false,
        },
        {
                "ray-x/starry.nvim",
                lazy = false,
        },
        {
                "junegunn/fzf",
                lazy = false,
        },
        {
                "junegunn/fzf.vim",
                lazy = false,
        },
        {
                "dstein64/nvim-scrollview",
                event = "User AstroFile",
                config = function()
                        require('scrollview').setup({
                                excluded_filetypes = { 'nerdtree' },
                                winblend = 25,
                        })
                end
        },
        {
                "WhoIsSethDaniel/toggle-lsp-diagnostics.nvim",
                event = "User AstroFile",
                config = function()
                        require('toggle_lsp_diagnostics').init()
                end
        },
        {
                "lervag/vimtex",
                lazy = false,
        },
}
