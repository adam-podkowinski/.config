require("flutter-tools").setup({
  ui = {
    border = "rounded",
  },
  lsp = {
--    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    color = {
      enabled = true,
    },
  },
})
