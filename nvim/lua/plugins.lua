return require("packer").startup(function(use)
    -- Packer
    use("wbthomason/packer.nvim")
    -- Colorscheme
    --use('loctvl842/monokai-pro.nvim')
    use("catppuccin/nvim")
    -- Faster and prettier comments
    use("tpope/vim-commentary")
    -- fuzzy find
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")
    use("nvim-telescope/telescope-fzy-native.nvim")
    use { "ahmedkhalf/project.nvim", config = function()
        require('project_nvim').setup {}
    end }
    -- Motion
    use("unblevable/quick-scope")
    use("easymotion/vim-easymotion")
    use { "mg979/vim-visual-multi", branch = 'master' }
    -- Faster surround with quotes or brackets
    use("tpope/vim-surround")
    -- close buffers with style
    use("qpkorr/vim-bufkill")
    -- File manager
    use("kyazdani42/nvim-tree.lua")
    -- LSP
    use("nvim-lua/plenary.nvim")
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use { "williamboman/mason.nvim" }
    use { "williamboman/mason-lspconfig.nvim" }
    use("neovim/nvim-lspconfig")
    use { 'stevearc/dressing.nvim' }
    use("ray-x/lsp_signature.nvim")
    use("onsails/lspkind.nvim")
    -- use 'simrat39/rust-tools.nvim'
    use 'mfussenegger/nvim-dap'
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
    use {
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup {} end
    }
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/cmp-vsnip'
    use 'mattn/emmet-vim'
    -- Languages
    use("akinsho/flutter-tools.nvim")
    use("cespare/vim-toml")
    use("L04DB4L4NC3R/texgroff.vim")
    use("lervag/vimtex")
    -- Git
    use("tpope/vim-fugitive")
    use("lewis6991/gitsigns.nvim")
    -- Nice status line
    use("nvim-lualine/lualine.nvim")
    use("akinsho/bufferline.nvim")
    -- Icons
    use("nvim-tree/nvim-web-devicons")
    -- Colorful brackets
    use("HiPhish/rainbow-delimiters.nvim")
    -- Close pairs
    use("jiangmiao/auto-pairs")
    -- Indent lines
    use("lukas-reineke/indent-blankline.nvim")
    -- Colorizer
    use 'NvChad/nvim-colorizer.lua'
    -- Better dot (.) command
    use("tpope/vim-repeat")
end)
