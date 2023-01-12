local servers = { 'bashls', 'clangd', 'cssls', 'cssmodules_ls',
  'html', 'jedi_language_server', 'rust_analyzer', 'sumneko_lua', 'texlab',
  'vimls', 'yamlls', 'jsonls', 'cmake', 'tailwindcss', 'prismals' }

require('mason').setup {}
require("mason-lspconfig").setup {
  ensure_installed = servers
}

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
vim.api.nvim_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>F", "<cmd>lua vim.lsp.buf.format { async = true }<CR>", opts)

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
})
local signs = { Error = "❌", Warn = "⚠️", Hint = "💡", Info = "💡" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

require('lspconfig')['volar'].setup {
  capabilities = capabilities,
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'},
  on_attach = function(client)
    client.server_capabilities.documentFormattingProvider = false
  end,
  -- init_options = {
  --   typescript = {
  --     tsdk = '/usr/lib/node_modules/typescript/lib',
  --   }
  -- }
}

for _, lsp in pairs(servers) do
  OnAtt = function() end
  if lsp == 'jsonls' or lsp == 'tsserver' then
    OnAtt = function(client, _)
      client.server_capabilities.documentFormattingProvider = false
    end
  end
  if lsp == 'tailwindcss' then
    OnAtt = function(client, _)
      client.server_capabilities.completionProvider = false
    end
  end
  require('lspconfig')[lsp].setup {
    capabilities = capabilities,
    on_attach = OnAtt,
    settings = {
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
