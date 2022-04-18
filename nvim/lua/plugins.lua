return require("packer").startup(function(use)
  -- Packer
  use("wbthomason/packer.nvim")
  -- Colorscheme
  use("marko-cerovac/material.nvim")
  -- Faster and prettier comments
  use("tpope/vim-commentary")
  -- fuzzy find
  use("nvim-lua/popup.nvim")
  use("nvim-telescope/telescope.nvim")
  use("nvim-telescope/telescope-fzy-native.nvim")
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'
  use("airblade/vim-rooter")
  -- Motion
  use("unblevable/quick-scope")
  use("easymotion/vim-easymotion")
  -- Faster surround with quotes or brackets
  use("tpope/vim-surround")
  -- File manager
  use("kyazdani42/nvim-tree.lua")
  -- LSP
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use("neovim/nvim-lspconfig")
  use("williamboman/nvim-lsp-installer")
  use("tami5/lspsaga.nvim")
  use("RishabhRD/popfix")
  use("ojroques/nvim-lspfuzzy")
  use("ray-x/lsp_signature.nvim")
  use("onsails/lspkind.nvim")
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  -- Languages
  use({ "akinsho/flutter-tools.nvim", requires = "nvim-lua/plenary.nvim" })
  use("udalov/kotlin-vim")
  use("dart-lang/dart-vim-plugin")
  use("StanAngeloff/php.vim")
  use("cespare/vim-toml")
  use("L04DB4L4NC3R/texgroff.vim")
  use("lervag/vimtex")
  -- Git
  use("tpope/vim-fugitive")
  use("nvim-lua/plenary.nvim")
  use("lewis6991/gitsigns.nvim")
  use("tpope/vim-rhubarb")
  -- Close buffers with style
  use("qpkorr/vim-bufkill")
  -- Nice status line
  use("nvim-lualine/lualine.nvim")
  use("akinsho/nvim-bufferline.lua")
  -- Icons
  use("kyazdani42/nvim-web-devicons")
  -- Colorful brackets
  use("p00f/nvim-ts-rainbow")
  -- Close pairs
  use("jiangmiao/auto-pairs")
  -- Indent lines
  use("lukas-reineke/indent-blankline.nvim")
  -- Colorizer
  use({ "rrethy/vim-hexokinase", run = "make hexokinase" })
  -- Better dot (.) command
  use("tpope/vim-repeat")
  -- Copilot
  --use("github/copilot.vim")
  -- Rest
  use("NTBBloodbath/rest.nvim")
end)
