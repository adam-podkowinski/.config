local servers = { 'bashls', 'clangd', 'cssls', 'cssmodules_ls',
    'html', 'jedi_language_server', 'rust_analyzer', 'lua_ls', 'texlab',
    'vimls', 'yamlls', 'jsonls', 'cmake', 'tailwindcss', 'prismals', 'svelte', 'tsserver', 'arduino_language_server',
    'eslint' }

require('mason').setup {}
require("mason-lspconfig").setup {}

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, opts)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
vim.keymap.set("n", "<leader>F", vim.lsp.buf.format, opts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
vim.keymap.set('n', '<leader>R', vim.lsp.buf.rename, opts)
vim.keymap.set({ 'n', 'v' }, '<leader>a', vim.lsp.buf.code_action, opts)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false,
    }
)
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig')['volar'].setup {
    capabilities = capabilities,
    -- filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
    on_attach = function(client)
        client.server_capabilities.documentFormattingProvider = false
    end,
}

for _, lsp in pairs(servers) do
    OnAtt = function() end
    -- if lsp == 'jsonls' or lsp == 'tsserver' then
    --   OnAtt = function(client, _)
    --      client.server_capabilities.documentFormattingProvider = false
    --   end
    -- end
    if lsp == 'eslint' then
        OnAtt = function(_, bufnr)
            vim.api.nvim_create_autocmd("BufWritePre", {
                buffer = bufnr,
                command = "EslintFixAll",
            })
        end
    end
    require('lspconfig')[lsp].setup {
        capabilities = capabilities,
        on_attach = OnAtt,
        settings = {
            ['rust-analyzer'] = {
                diagnostics = {
                    enable = true,
                }
            },
            css = {
                lint = {
                    unknownAtRules = 'ignore',
                }
            }
        },
        color = {
            enabled = true,
            background = true,
        },
    }
end
