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
                "catppuccin/nvim",
                name = "catppuccin",
                config = function()
                        require("catppuccin").setup({
                                flavour = "mocha", -- latte, frappe, macchiato, mocha
                                background = {
                                        -- :h background
                                        light = "latte",
                                        dark = "mocha",
                                },
                                transparent_background = true,
                                show_end_of_buffer = false, -- show the '~' characters after the end of buffers
                                term_colors = false,
                                dim_inactive = {
                                        enabled = false,
                                        shade = "dark",
                                        percentage = 0.15,
                                },
                                no_italic = false,    -- Force no italic
                                no_bold = false,      -- Force no bold
                                no_underline = false, -- Force no underline
                                styles = {
                                        comments = { "italic" },
                                        conditionals = { "italic" },
                                        loops = {},
                                        functions = {},
                                        keywords = {},
                                        strings = {},
                                        variables = {},
                                        numbers = {},
                                        booleans = {},
                                        properties = {},
                                        types = {},
                                        operators = {},
                                },
                                color_overrides = {},
                                custom_highlights = {},
                                integrations = {
                                        cmp = true,
                                        gitsigns = true,
                                        nvimtree = true,
                                        telescope = true,
                                        notify = false,
                                        mini = false,
                                        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
                                },
                        })
                end,
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
                "junegunn/fzf",
                lazy = false,
        },
        {
                "junegunn/fzf.vim",
                lazy = false,
        },
}
