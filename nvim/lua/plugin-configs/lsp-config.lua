require('mason').setup {}
require("mason-lspconfig").setup {}

local lspconfig = require("lspconfig")
local lsp = vim.lsp

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts)
vim.keymap.set("n", "gD", lsp.buf.declaration, opts)
vim.keymap.set("n", "gi", lsp.buf.implementation, opts)
vim.keymap.set("n", "<leader>F", lsp.buf.format, opts)
vim.keymap.set('n', 'K', lsp.buf.hover, opts)
vim.keymap.set('n', '<leader>R', lsp.buf.rename, opts)
vim.keymap.set({ 'n', 'v' }, '<leader>a', lsp.buf.code_action, opts)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)

vim.diagnostic.config({
    virtual_text = false,
    underline = true,
    severity_sort = true,
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '',
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.HINT] = '',
            [vim.diagnostic.severity.INFO] = '',
        },
        linehl = {
            [vim.diagnostic.severity.ERROR] = '',
        },
        numhl = {
            [vim.diagnostic.severity.WARN] = 'WarningMsg',
            [vim.diagnostic.severity.ERROR] = 'ErrorMsg',
        },
    },
})

lspconfig.emmet_language_server.setup({
    filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact", "php" },
})

