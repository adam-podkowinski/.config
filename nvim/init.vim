"Plug section
call plug#begin('~/.vim/plugged')

"Colorscheme
"Plug 'kaicataldo/material.vim', { 'branch': 'main' }
"Plug 'arcticicestudio/nord-vim'
"Plug 'haishanh/night-owl.vim'
Plug 'drewtempelmeyer/palenight.vim'
"Startify
Plug 'mhinz/vim-startify'
"Faster and prettier comments
Plug 'preservim/nerdcommenter'
"fuzzy find
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
"Motion
Plug 'unblevable/quick-scope'
Plug 'easymotion/vim-easymotion'
"Faster surround with quotes or brackets
Plug 'tpope/vim-surround'
"File manager
Plug 'preservim/nerdtree'
"Auto completion and IDE functions
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Dart and flutter support
Plug 'dart-lang/dart-vim-plugin'
"Git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
"Undo tree
Plug 'mbbill/undotree'
"Close buffers with style :)
Plug 'qpkorr/vim-bufkill'
"Nice status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Colorful brackets
Plug 'frazrepo/vim-rainbow'
"Close pairs
Plug 'jiangmiao/auto-pairs'
"C++ syntax
Plug 'octol/vim-cpp-enhanced-highlight'
"C++ debugging
"Plug 'vim-scripts/Conque-GDB'
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
"Fish
Plug 'https://github.com/dag/vim-fish'
"groff
Plug 'L04DB4L4NC3R/texgroff.vim'
call plug#end()

filetype plugin indent on
"colorscheme material
"colorscheme nord
"colorscheme night-owl
colorscheme palenight
"Sets
set foldmethod=syntax
set foldlevel=99
set softtabstop=2
set so=2
set autoindent
set background=dark
set cmdheight=1
set encoding=UTF-8
set expandtab
set fileencoding=utf-8
set hidden
set iskeyword+=-
set laststatus=2
set mouse=a
set nobackup
set lazyredraw
set noshowmatch
set noshowmode
set noswapfile
set nowritebackup
set relativenumber
set number
set pumheight=10
set ruler
set shiftwidth=2
set showtabline=2
set smartindent
set smarttab
set splitbelow splitright
set tabstop=2
set timeoutlen=350
set ttimeoutlen=0
set updatetime=200
set wrap
set tl=500
set ic
set conceallevel=0
set shortmess+=c
set signcolumn=yes
if has('termguicolors')
    set termguicolors
endif

packadd termdebug

"Variables
let g:termdebug_wide=1
let g:material_theme_style = 'ocean'
let g:material_terminal_italics = 1
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let mapleader = ' '
let g:airline_theme='palenight'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_buffers = 1

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

if executable('rg')
  let g:rg_derive_root='true'
endif
let g:rainbow_active = 1
let g:rainbow_guifgs = ['#FFDF01', '#da70d6', '#87CEFA']
let g:rooter_change_directory_for_non_project_files = 'current'
let g:dart_format_on_save = 0
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1
"CPP
" c++ syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

"Remaps
vnoremap <C-S-y> "+y
vnoremap <C-S-p> "+p
nnoremap <Leader>z :noh<CR>
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>

nnoremap <c-u> viwU<Esc>
nnoremap <Leader><c-u> viwu<Esc>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <silent> <Leader>l :!runLatexVim.py % &<CR>

noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

nnoremap <C-c> :BD!<CR>
nmap <Leader>; <Plug>(easymotion-overwin-f2)
map <Leader> <Plug>(easymotion-prefix)
imap ;; <Esc>

"Commands
autocmd BufWritePre * :%s/\s\+$//e
au! BufWritePost $MYVIMRC source %
au BufNewFile,BufRead *.groff *.ms set filetype=groff

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

"Colors
"Must be below colorscheme
highlight Normal guibg=NONE ctermbg=NONE ctermfg=103 guifg=#8f93a2
highlight SignColumn guibg=NONE ctermbg=NONE
hi MatchParen guifg=White
hi MatchParen guibg=NONE
highlight link dartTypedef dartStatement
highlight link dartClassDecl dartStatement
highlight Comment cterm=italic gui=italic

"Sources
source ~/.config/nvim/coc-settings.vim
source ~/.config/nvim/fzf.vim
source ~/.config/nvim/functions.vim

"Others
