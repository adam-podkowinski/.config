return require("lazy").setup({
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            bigfile = { enabled = true },
            dashboard = { enabled = true },
            explorer = { enabled = true },
            indent = {
                enabled = true,
                scope = {
                    enabled = false,
                },
                animate = {
                    enabled = false
                }
            },
            input = { enabled = true },
            picker = { enabled = true },
            notifier = { enabled = true },
            quickfile = { enabled = true },
            scope = { enabled = true },
            scroll = { enabled = false },
            statuscolumn = { enabled = false },
            words = { enabled = false },
        },
        keys = {
            { "<leader>f", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
            { "<leader>g", function() Snacks.picker.grep() end, desc = "Grep" },
            { "<leader><leader>", function() Snacks.explorer() end, desc = "Explorer" },
            { "<c-c>", function() Snacks.bufdelete() end,  desc = "Grep" },
        },
    },
    "catppuccin/nvim",
    "tpope/vim-commentary",
    "nvim-lua/popup.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-telescope/telescope-fzy-native.nvim",
    "tpope/vim-fugitive",
    {
        "smoka7/hop.nvim",
        config = function()
            require'hop'.setup {}
        end
    },
    "nvim-lua/plenary.nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "onsails/lspkind.nvim",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "lewis6991/gitsigns.nvim",
    "nvim-lualine/lualine.nvim",
    "nvim-tree/nvim-web-devicons",
    "HiPhish/rainbow-delimiters.nvim",
    "NvChad/nvim-colorizer.lua",
    "tpope/vim-repeat",
    { "nvim-treesitter/nvim-treesitter", cmd = "TSUpdate" },
    { "windwp/nvim-autopairs", config = true },
    { "notjedi/nvim-rooter.lua",         config = function() require("nvim-rooter").setup() end },
})
