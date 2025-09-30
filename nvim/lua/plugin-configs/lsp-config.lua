local lsp = vim.lsp
local opts = { noremap = true, silent = true }
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

lsp.config("emmet_language_server", {
    filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact", "php" },
})

lsp.config('basedpyright', {
    settings = {
        pyright = {
            disableOrganizeImports = true,
        },
        basedpyright = {
            analysis = {
                ignore = { "*" },
            },
        },
    },
})
