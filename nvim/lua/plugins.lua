return require("lazy").setup({
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            bigfile = { enabled = true },
            dashboard = { enabled = true },
            explorer = { enabled = true, replace_netrw = true, },
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
            scope = { enabled = true },
            scroll = { enabled = false },
            statuscolumn = { enabled = false },
            words = { enabled = false },
        },
        keys = {
            { "<leader>f",        function() Snacks.picker.smart() end, desc = "Smart Find Files" },
            { "<leader>g",        function() Snacks.picker.grep() end,  desc = "Grep" },
            { "<leader><leader>", function() Snacks.explorer() end,     desc = "Explorer" },
            { "<c-c>",            function() Snacks.bufdelete() end,    desc = "Bufdelete" },
        },
    },
    {
        "yetone/avante.nvim",
        event = "VeryLazy",
        version = false,
        opts = {
            provider = "gemini",
            providers = {
                gemini = {
                    endpoint = "https://generativelanguage.googleapis.com/v1beta/models",
                    model = "gemini-2.0-flash",
                    timeout = 30000,
                    temperature = 0,
                    max_tokens = 8192,
                },
                ollama = {
                    model = "doomgrave/gemma3-tools:latest",
                    temperature = 0,
                    max_tokens = 16384,
                    disable_tools = false,
                    timeout = 30000,
                },
                deepseek = {
                    __inherited_from = "openai",
                    api_key_name = "DEEPSEEK_API_KEY",
                    endpoint = "https://api.deepseek.com",
                    model = "deepseek-coder",
                    max_tokens = 8192,
                },
            },
        },
        dependencies = {
            "MunifTanjim/nui.nvim",
            {
                'MeanderingProgrammer/render-markdown.nvim',
                opts = {
                    file_types = { "markdown", "Avante" },
                },
                ft = { "markdown", "Avante" },
            },
        },
        build = "make",
    },
    "catppuccin/nvim",
    "tpope/vim-commentary",
    "nvim-lua/popup.nvim",
    "nvim-telescope/telescope.nvim",
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    "tpope/vim-fugitive",
    "smoka7/hop.nvim",
    "nvim-lua/plenary.nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "onsails/lspkind.nvim",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "lewis6991/gitsigns.nvim",
    "nvim-lualine/lualine.nvim",
    "nvim-tree/nvim-web-devicons",
    {
        "3rd/image.nvim",
        event = "VeryLazy",
    },
    "HiPhish/rainbow-delimiters.nvim",
    "NvChad/nvim-colorizer.lua",
    "tpope/vim-repeat",
    {
        "nvim-treesitter/nvim-treesitter",
        cmd = "TSUpdate",
    },
    { "windwp/nvim-autopairs",   config = true },
    { "notjedi/nvim-rooter.lua", config = function() require("nvim-rooter").setup() end },
})
