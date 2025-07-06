return require("lazy").setup({
    { "catppuccin/nvim",      priority = 1200 },
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
    { "tpope/vim-commentary", event = "VeryLazy" },
    { "tpope/vim-repeat",     event = "VeryLazy" },
    { "tpope/vim-fugitive",   event = "VeryLazy" },
    { "smoka7/hop.nvim",      event = "VeryLazy" },
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
        "williamboman/mason-lspconfig.nvim",
        event = "VeryLazy",
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
        opts = {},
    },
    {
        "lewis6991/gitsigns.nvim",
        event = "VeryLazy",
    },
    { "nvim-lualine/lualine.nvim",   event = "VeryLazy", },
    { "nvim-tree/nvim-web-devicons", event = "VeryLazy" },
    "HiPhish/rainbow-delimiters.nvim",
    {
        "NvChad/nvim-colorizer.lua",
        event = "VeryLazy",
        opts = {
            filetypes = { "*" },
            user_default_options = {
                tailwind = true,
                RGB = true,
                RRGGBB = true,
                names = true,
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
        "nvim-treesitter/nvim-treesitter",
        cmd = "TSUpdate",
        event = "VeryLazy",
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
        opts = {},
    },
    { "notjedi/nvim-rooter.lua", opts = {}, event = "VeryLazy" },
    -- {
    --     "yetone/avante.nvim",
    --     event = "VeryLazy",
    --     version = false,
    --     opts = {
    --         provider = "gemini",
    --         hints = { enabled = false },
    --         providers = {
    --             gemini = {
    --                 endpoint = "https://generativelanguage.googleapis.com/v1beta/models",
    --                 model = "gemini-2.0-flash",
    --                 timeout = 30000,
    --                 temperature = 0,
    --                 max_tokens = 8192,
    --             },
    --             ollama = {
    --                 model = "doomgrave/gemma3-tools:latest",
    --                 temperature = 0,
    --                 max_tokens = 16384,
    --                 disable_tools = false,
    --                 timeout = 30000,
    --             },
    --             deepseek = {
    --                 __inherited_from = "openai",
    --                 api_key_name = "DEEPSEEK_API_KEY",
    --                 endpoint = "https://api.deepseek.com",
    --                 model = "deepseek-coder",
    --                 max_tokens = 8192,
    --             },
    --         },
    --     },
    --     dependencies = {
    --         "MunifTanjim/nui.nvim",
    --         {
    --             'MeanderingProgrammer/render-markdown.nvim',
    --             opts = {
    --                 file_types = { "markdown", "Avante" },
    --             },
    --             ft = { "markdown", "Avante" },
    --         },
    --     },
    --     build = "make",
    -- },
})
