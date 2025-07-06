vim.loader.enable()
-- Lazy nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Keymaps
vim.keymap.set("v", "<Leader>c", '"+y', { noremap = true })
vim.keymap.set("n", "<Leader>v", '"+p', { noremap = true })
vim.keymap.set("n", "<Leader>z", "<cmd>noh<CR>", { noremap = true })
vim.keymap.set("n", "<TAB>", "<cmd>bnext<CR>", { noremap = true })
vim.keymap.set("n", "<S-TAB>", "<cmd>bprev<CR>", { noremap = true })
vim.keymap.set("n", "<c-u>", "viwU<Esc>", { noremap = true })
vim.keymap.set("n", "<Leader><c-u>", " viwu<Esc>", { noremap = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true })
vim.keymap.set("n", "<Leader>o", "<C-w>o", { noremap = true })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize +3<CR>", { noremap = true })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize -3<CR>", { noremap = true })
vim.keymap.set("n", "<C-Up>", "<cmd>resize +3<CR>", { noremap = true })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -3<CR>", { noremap = true })

-- Sets
vim.opt.linespace = 6
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.winborder = 'rounded'
vim.opt.termguicolors = true
vim.opt.fillchars = 'eob: '
vim.opt.softtabstop = 4
vim.opt.so = 4
vim.opt.autoindent = true
vim.opt.background = "dark"
vim.opt.cmdheight = 0
vim.opt.tw = 100
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
vim.opt.pumheight = 5
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
vim.opt.wrap = true
vim.opt.textwidth = 0
vim.opt.showbreak = "··"
vim.opt.ic = true
vim.opt.conceallevel = 0
vim.opt.shortmess = vim.opt.shortmess + "c"
vim.opt.signcolumn = "yes"

-- Plugin configs
require("plugins")
require("plugin-configs.lsp-config")
require("plugin-configs.other-config")
require("plugin-configs.treesitter-config")
require("plugin-configs.lualine-config")
