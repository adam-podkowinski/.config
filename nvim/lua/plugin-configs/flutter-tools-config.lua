require("flutter-tools").setup({
  ui = {
    border = "rounded",
  },
  lsp = --require('coq').lsp_ensure_capabilities(
  {
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
  },
  --),
})
