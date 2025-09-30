return require("lazy").setup({
    {
        "catppuccin/nvim",
        priority = 1200,
        config = function()
            require("catppuccin").setup({
                compile_path = vim.fn.stdpath "cache" .. "/catppuccin",
                flavour = "mocha",
                background = {
                    dark = "mocha",
                },
                transparent_background = false,
                integrations = {
                    mason = true,
                    hop = true,
                    snacks = true,
                }
            })
            vim.cmd.colorscheme "catppuccin"
        end
    },
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            bigfile = { enabled = true },
            dashboard = { enabled = true },
            explorer = { enabled = true, replace_netrw = true },
            indent = {
                enabled = true,
                scope = {
                    enabled = true,
                },
                animate = {
                    enabled = false,
                }
            },
            input = { enabled = true },
            picker = {
                enabled = true,
                sources = {
                    explorer = {
                        layout = { layout = { position = "right" } },
                    }
                },
            },
            notifier = { enabled = true },
            quickfile = { enabled = true },
            scope = { enabled = false },
            scroll = { enabled = false },
            statuscolumn = { enabled = false },
            words = { enabled = false },
        },
        keys = {
            { "<leader>f",        function() Snacks.picker.smart() end,               desc = "Smart Find Files" },
            { "<leader>g",        function() Snacks.picker.grep() end,                desc = "Grep" },
            { "<leader><leader>", function() Snacks.explorer() end,                   desc = "Explorer" },
            { "<C-c>",            function() Snacks.bufdelete() end,                  desc = "Bufdelete" },
            { "gd",               function() Snacks.picker.lsp_definitions() end,     desc = "LSP Definitions" },
            { "gr",               function() Snacks.picker.lsp_references() end,      desc = "LSP References" },
            { "gi",               function() Snacks.picker.lsp_implementations() end, desc = "LSP Implementations" },
            { "gD",               function() Snacks.picker.lsp_declarations() end,    desc = "LSP Declarations" },
            { "<Leader>q",        function() Snacks.picker.diagnostics() end,         desc = "LSP Declarations" },
        },
    },
    {
        "williamboman/mason-lspconfig.nvim",
        event = "VeryLazy",
        dependencies = {
            { "neovim/nvim-lspconfig", event = "VeryLazy" },
            { "mason-org/mason.nvim",  opts = {},         event = "VeryLazy" },
        },
        opts = {},
    },
    {
        "smoka7/hop.nvim",
        event = "VeryLazy",
        opts = {},
        keys = {
            { "<leader>;", function() require("hop").hint_words() end, desc = "Hop" }
        }
    },
    {
        'saghen/blink.cmp',
        dependencies = { 'rafamadriz/friendly-snippets' },
        event = "VeryLazy",
        version = '1.*',
        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
            keymap = { preset = 'enter' },
            appearance = {
                nerd_font_variant = 'mono'
            },
            completion = { documentation = { auto_show = true } },
            signature = { enabled = true },
            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' },
            },
            fuzzy = { implementation = "prefer_rust_with_warning" }
        },
        opts_extend = { "sources.default" }
    },
    {
        "NvChad/nvim-colorizer.lua",
        event = "VeryLazy",
        opts = {
            filetypes = { "*" },
            user_default_options = {
                tailwind = true,
                RGB = true,
                RRGGBB = true,
                names = false,
                RRGGBBAA = true,
                AARRGGBB = true,
                rgb_fn = true,
                hsl_fn = true,
                css = true,
                css_fn = true,
            }
        }
    },
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            options = {
                component_separators = { left = "┃", right = "" },
                section_separators = { left = "", right = "" },
                globalstatus = true,
            },
            tabline = {
                lualine_a = {
                    {
                        'buffers',
                        symbols = {
                            modified = ' ●',
                            alternate_file = '',
                            directory = '',
                        },
                    },
                },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {}
            }
        }
    },
    { "HiPhish/rainbow-delimiters.nvim" },
    { "nvim-treesitter/nvim-treesitter", cmd = "TSUpdate",      event = "VeryLazy" },
    { "lewis6991/gitsigns.nvim",         event = "VeryLazy" },
    { "tpope/vim-commentary",            event = "VeryLazy" },
    { "tpope/vim-repeat",                event = "VeryLazy" },
    { "tpope/vim-fugitive",              event = "VeryLazy" },
    { "nvim-tree/nvim-web-devicons",     event = "VeryLazy" },
    { "windwp/nvim-autopairs",           event = "InsertEnter", opts = {} },
    { "notjedi/nvim-rooter.lua",         event = "VeryLazy",    opts = {} },
})
