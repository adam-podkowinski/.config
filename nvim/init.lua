-- Vim Scripts
vim.cmd [[
"Plug section
call plug#begin('~/.vim/plugged')

"Colorscheme
Plug 'marko-cerovac/material.nvim'
"Faster and prettier comments
Plug 'tpope/vim-commentary'
"fuzzy find
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'airblade/vim-rooter'
"Motion
Plug 'unblevable/quick-scope'
Plug 'easymotion/vim-easymotion'
"Faster surround with quotes or brackets
Plug 'tpope/vim-surround'
"File manager
Plug 'kyazdani42/nvim-tree.lua'
"Auto completion and IDE functions
Plug 'neoclide/coc.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'udalov/kotlin-vim'
"Dart and flutter support
Plug 'dart-lang/dart-vim-plugin'
"Git
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-rhubarb'
"Close buffers with style
Plug 'qpkorr/vim-bufkill'
"Nice status line
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/nvim-bufferline.lua'
"Icons
Plug 'kyazdani42/nvim-web-devicons'
"Colorful brackets
Plug 'p00f/nvim-ts-rainbow'
"Close pairs
Plug 'jiangmiao/auto-pairs'
"Indent lines
Plug 'lukas-reineke/indent-blankline.nvim'
"Tex
Plug 'lervag/vimtex'
"Colorizer
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
"Toml
Plug 'cespare/vim-toml'
"Better dot (.) command
Plug 'tpope/vim-repeat'
"snippets
Plug 'honza/vim-snippets'
"groff
Plug 'L04DB4L4NC3R/texgroff.vim'
"PHP
Plug 'StanAngeloff/php.vim'
"Copilot
Plug 'github/copilot.vim'
"Rest
Plug 'NTBBloodbath/rest.nvim'
"Tab out
Plug 'abecodes/tabout.nvim'
call plug#end()

filetype plugin indent on

source ~/.config/nvim/coc-settings.vim
"Commands
autocmd BufWritePre * :%s/\s\+$//e
au! BufWritePost $MYVIMRC source %
au BufNewFile,BufRead *.groff *.ms set filetype=groff
autocmd filetype * set shiftwidth=2 tabstop=2 softtabstop=2
autocmd filetype php set shiftwidth=4 tabstop=4 softtabstop=4
autocmd filetype rust set shiftwidth=4 tabstop=4 softtabstop=4

"Functions
inoremap <expr> <CR> InsertMapForEnter()
function! InsertMapForEnter()
    if pumvisible()
        return "\<C-y>"
    elseif strcharpart(getline('.'),getpos('.')[2]-1,1) == '}'
        return "\<CR>\<Esc>O"
    elseif strcharpart(getline('.'),getpos('.')[2]-1,2) == '</'
        return "\<CR>\<Esc>O"
    elseif strcharpart(getline('.'),getpos('.')[2]-1,2) == '),'
        return "\<CR>\<Esc>O"
    else
        return "\<CR>"
    endif
endfunction
]]

-- Variables
vim.g.mapleader = ' '
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_width_allow_resize = 1
vim.g.material_style = "deep ocean"
vim.g.qs_highlight_on_keys = {'f', 'F', 't', 'T'}
vim.g.rg_derive_root='true'
vim.g.rooter_change_directory_for_non_project_files = 'current'
vim.g.dart_format_on_save = 0
vim.g.EasyMotion_do_mapping = 0
vim.g.EasyMotion_smartcase = 1

-- Keymaps
vim.keymap.set('n', '<leader>f',  '<cmd>Telescope find_files hidden=true<cr>', {noremap = true})
vim.keymap.set('n', '<leader>g', '<cmd>Telescope live_grep<cr>', {noremap = true})
vim.keymap.set('n', '<leader><leader>', '<cmd>NvimTreeToggle<cr>', {noremap = true})
vim.keymap.set('n', '<C-\\>', '<cmd>NvimTreeFindFile<cr>', {noremap = true})
vim.keymap.set('v','<Leader>c', '"+y',{noremap = true})
vim.keymap.set('n','<Leader>v', '"+p',{noremap = true})
vim.keymap.set('n','<Leader>z', '<cmd>noh<CR>',{noremap = true})
vim.keymap.set('n','<TAB>', '<cmd>BufferLineCycleNext<CR>',{noremap = true})
vim.keymap.set('n','<S-TAB>', '<cmd>BufferLineCyclePrev<CR>',{noremap = true})
vim.keymap.set('n', '<c-u>', 'viwU<Esc>',{noremap = true})
vim.keymap.set('n','<Leader><c-u>',' viwu<Esc>',{noremap = true})
vim.keymap.set('n','<C-h>',' <C-w>h',{noremap = true})
vim.keymap.set('n','<C-k>',' <C-w>k',{noremap = true})
vim.keymap.set('n','<C-Left>', '<cmd>vertical resize +3<CR>',{noremap = true})
vim.keymap.set('n','<C-Right>', '<cmd>vertical resize -3<CR>',{noremap = true})
vim.keymap.set('n', '<C-Up>', '<cmd>resize +3<CR>',{noremap = true})
vim.keymap.set('n', '<C-Down>', '<cmd>resize -3<CR>',{noremap = true})
vim.keymap.set('n','<C-c>',' :BD!<CR>',{noremap = true})
vim.keymap.set('n','<Leader>;','<Plug>(easymotion-overwin-f2)',{noremap = true})
vim.keymap.set('n','<Leader>r','<Plug>RestNvim',{noremap = true})

-- Sets
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.foldmethod="syntax"
vim.opt.foldlevel=99
vim.opt.softtabstop=2
vim.opt.so=2
vim.opt.autoindent = true
vim.opt.background='dark'
vim.opt.cmdheight=1
vim.opt.encoding='UTF-8'
vim.opt.expandtab = true
vim.opt.fileencoding='utf-8'
vim.opt.hidden = true
vim.opt.iskeyword = vim.opt.iskeyword + '-'
vim.opt.mouse='a'
vim.opt.lazyredraw = true
vim.opt.showmatch = false
vim.opt.showmode = false
vim.opt.swapfile = false
vim.opt.writebackup = false
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.pumheight=10
vim.opt.ruler = true
vim.opt.shiftwidth=2
vim.opt.showtabline=2
vim.opt.smartindent = true
vim.opt.cindent = true
vim.opt.smarttab = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop=2
vim.opt.timeoutlen=350
vim.opt.ttimeoutlen=0
vim.opt.updatetime=200
vim.opt.wrap = true
vim.opt.tl=500
vim.opt.ic = true
vim.opt.conceallevel=0
vim.opt.shortmess = vim.opt.shortmess + 'c'
vim.opt.signcolumn= 'yes'
vim.opt.regexpengine=1

-- Plugin configs
require('plugin-configs/treesitter-config')
require('plugin-configs/bufferline-config')
require('plugin-configs/lualine-config')
require('plugin-configs/material-config')
require('plugin-configs/telescope-config')
require('plugin-configs/tabout-config')
require('plugin-configs/other-config')