return require("packer").startup(function(use)
  -- Speed up neovim startup
  use 'lewis6991/impatient.nvim'
  -- Packer
  use("wbthomason/packer.nvim")
  -- Colorscheme
  use('loctvl842/monokai-pro.nvim')
  -- use('marko-cerovac/material.nvim')
  -- use('folke/tokyonight.nvim')
  -- use "EdenEast/nightfox.nvim"
  -- use "rebelot/kanagawa.nvim"
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
  -- File manager
  use("kyazdani42/nvim-tree.lua")
  -- LSP
  use("nvim-lua/plenary.nvim")
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use { "williamboman/mason.nvim" }
  use { "williamboman/mason-lspconfig.nvim" }
  use("neovim/nvim-lspconfig")
  use("tami5/lspsaga.nvim")
  use("ray-x/lsp_signature.nvim")
  use("onsails/lspkind.nvim")
  use("jose-elias-alvarez/null-ls.nvim")
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
  -- Close buffers with style
  use("qpkorr/vim-bufkill")
  -- Nice status line
  use("nvim-lualine/lualine.nvim")
  use("akinsho/nvim-bufferline.lua")
  -- Icons
  use("nvim-tree/nvim-web-devicons")
  -- Colorful brackets
  use("p00f/nvim-ts-rainbow")
  -- Close pairs
  use("jiangmiao/auto-pairs")
  -- Indent lines
  use("lukas-reineke/indent-blankline.nvim")
  -- Colorizer
  use 'NvChad/nvim-colorizer.lua'
  -- Better dot (.) command
  use("tpope/vim-repeat")
end)
