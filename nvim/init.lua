-- Faster load times
vim.loader.enable()
-- Variables
vim.g.mapleader = " "
vim.g.nvim_tree_width_allow_resize = 1
vim.g.qs_highlight_on_keys = { "f", "F", "t", "T" }
vim.g.rg_derive_root = "true"
vim.g.rooter_change_directory_for_non_project_files = "current"
vim.g.dart_format_on_save = 0
vim.g.EasyMotion_do_mapping = 0
vim.g.EasyMotion_smartcase = 1

-- Plugin configs
require("plugins")
require("plugin-configs/bufferline-config")
require("plugin-configs/lualine-config")
require("plugin-configs/telescope-config")
require("plugin-configs/cmp-config")
require("plugin-configs/lsp-config")
require("plugin-configs/flutter-tools-config")
require('plugin-configs/other-config')
require("plugin-configs/treesitter-config")

-- Keymaps
vim.keymap.set("n", "<leader><leader>", "<cmd>NvimTreeToggle<cr>", { noremap = true })
vim.keymap.set("n", "<C-\\>", "<cmd>NvimTreeFindFile<cr>", { noremap = true })
vim.keymap.set("v", "<Leader>c", '"+y', { noremap = true })
vim.keymap.set("n", "<Leader>v", '"+p', { noremap = true })
vim.keymap.set("n", "<Leader>z", "<cmd>noh<CR>", { noremap = true })
vim.keymap.set("n", "<TAB>", "<cmd>BufferLineCycleNext<CR>", { noremap = true })
vim.keymap.set("n", "<S-TAB>", "<cmd>BufferLineCyclePrev<CR>", { noremap = true })
vim.keymap.set("n", "<c-u>", "viwU<Esc>", { noremap = true })
vim.keymap.set("n", "<Leader><c-u>", " viwu<Esc>", { noremap = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize +3<CR>", { noremap = true })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize -3<CR>", { noremap = true })
vim.keymap.set("n", "<C-Up>", "<cmd>resize +3<CR>", { noremap = true })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -3<CR>", { noremap = true })
vim.keymap.set("n", "<C-c>", ":BD!<CR>", { noremap = true })
vim.keymap.set("n", "<Leader>;", "<Plug>(easymotion-overwin-f2)", { noremap = true })

-- Sets
vim.opt.termguicolors = true
vim.opt.fillchars = 'eob: '
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99
vim.opt.softtabstop = 4
vim.opt.so = 4
vim.opt.autoindent = true
vim.opt.background = "dark"
vim.opt.cmdheight = 1
vim.opt.tw = 88
vim.opt.encoding = "UTF-8"
vim.opt.expandtab = true
vim.opt.fileencoding = "utf-8"
vim.opt.hidden = true
vim.opt.iskeyword = vim.opt.iskeyword + "-"
vim.opt.mouse = "a"
vim.opt.lazyredraw = true
vim.opt.showmatch = false
vim.opt.showmode = false
vim.opt.swapfile = false
vim.opt.writebackup = false
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.pumheight = 10
vim.opt.ruler = true
vim.opt.linebreak = true
vim.opt.shiftwidth = 4
vim.opt.showtabline = 4
vim.opt.smartindent = true
vim.opt.cindent = true
vim.opt.smarttab = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 4
vim.opt.timeoutlen = 350
vim.opt.ttimeoutlen = 0
vim.opt.updatetime = 300
vim.opt.wrap = true
vim.opt.tl = 500
vim.opt.textwidth = 0
vim.opt.showbreak = "··"
vim.opt.ic = true
vim.opt.conceallevel = 0
vim.opt.shortmess = vim.opt.shortmess + "c"
vim.opt.signcolumn = "yes"

-- Vim Scripts
vim.cmd([[
filetype plugin indent on

"Commands
autocmd BufWritePre * :%s/\s\+$//e
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

function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<Tab>"
    else
      return "\<ESC>:call emmet#expandAbbr(0, '')\<CR>i"
    endif
endfunction
autocmd FileType javascript,html,javascriptreact,typescriptreact,css,scss,sass,vue inoremap <silent> <expr> <Tab> InsertTabWrapper()
hi RainbowYellow guifg=#ffdf01 ctermfg=White
hi RainbowViolet guifg=#da70d6
hi RainbowCyan guifg=#87cefa
hi RainbowGreen guifg=#37bf3e
hi RainbowBlue guifg=#1489e1
]])
