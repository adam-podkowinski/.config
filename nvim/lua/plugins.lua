return require("lazy").setup({
    "catppuccin/nvim",
    "tpope/vim-commentary",
    "nvim-lua/popup.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-telescope/telescope-fzy-native.nvim",
    "unblevable/quick-scope",
    "easymotion/vim-easymotion",
    "tpope/vim-surround",
    "qpkorr/vim-bufkill",
    "kyazdani42/nvim-tree.lua",
    "nvim-lua/plenary.nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "stevearc/dressing.nvim",
    "onsails/lspkind.nvim",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "saadparwaiz1/cmp_luasnip",
    "lewis6991/gitsigns.nvim",
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",  -- required
            "sindrets/diffview.nvim", -- optional - Diff integration
        },
        config = true
    },
    "nvim-lualine/lualine.nvim",
    "nvim-tree/nvim-web-devicons",
    "HiPhish/rainbow-delimiters.nvim",
    "lukas-reineke/indent-blankline.nvim",
    "NvChad/nvim-colorizer.lua",
    "tpope/vim-repeat",
    {
        "Isrothy/neominimap.nvim",
        version = "v3.*.*",
        enabled = true,
        lazy = false,
    },
    { 'kevinhwang91/nvim-ufo',           dependencies = 'kevinhwang91/promise-async' },
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp"
    },
    -- {
    --     "nvimtools/none-ls.nvim",
    --     dependencies = {
    --         "nvimtools/none-ls-extras.nvim",
    --     }
    -- },
    { "nvim-treesitter/nvim-treesitter", cmd = "TSUpdate" },
    { "windwp/nvim-autopairs",           config = function() require('nvim-autopairs').setup {} end, },
    { "notjedi/nvim-rooter.lua",         config = function() require("nvim-rooter").setup() end },
})
