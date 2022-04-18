return require('packer').startup(function(use)
-- Packer
use 'wbthomason/packer.nvim'
--Colorscheme
use 'marko-cerovac/material.nvim'
--Faster and prettier comments
use 'tpope/vim-commentary'
--fuzzy find
use 'nvim-lua/popup.nvim'
use 'nvim-telescope/telescope.nvim'
use 'nvim-telescope/telescope-fzy-native.nvim'
use 'airblade/vim-rooter'
--Motion
use 'unblevable/quick-scope'
use 'easymotion/vim-easymotion'
--Faster surround with quotes or brackets
use 'tpope/vim-surround'
--File manager
use 'kyazdani42/nvim-tree.lua'
--Auto completion and IDE functions
use {'neoclide/coc.nvim', branch = "release"}
use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
use 'udalov/kotlin-vim'
--Dart and flutter support
use 'dart-lang/dart-vim-plugin'
--Git
use 'tpope/vim-fugitive'
use 'nvim-lua/plenary.nvim'
use 'lewis6991/gitsigns.nvim'
use 'tpope/vim-rhubarb'
--Close buffers with style
use 'qpkorr/vim-bufkill'
--Nice status line
use 'nvim-lualine/lualine.nvim'
use 'akinsho/nvim-bufferline.lua'
--Icons
use 'kyazdani42/nvim-web-devicons'
--Colorful brackets
use 'p00f/nvim-ts-rainbow'
--Close pairs
use 'jiangmiao/auto-pairs'
--Indent lines
use 'lukas-reineke/indent-blankline.nvim'
--Tex
use 'lervag/vimtex'
--Colorizer
use {'rrethy/vim-hexokinase', cmd = 'make hexokinase' }
--Toml
use 'cespare/vim-toml'
--Better dot (.) command
use 'tpope/vim-repeat'
--snippets
use 'honza/vim-snippets'
--groff
use 'L04DB4L4NC3R/texgroff.vim'
--PHP
use 'StanAngeloff/php.vim'
--Copilot
use 'github/copilot.vim'
--Rest
use 'NTBBloodbath/rest.nvim'
end)
