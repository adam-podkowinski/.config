require("flutter-tools").setup({
  lsp = {
--    color = {
--      enabled = true,
--      background = true,
--      virtual_text = true,
--      virtual_text_str = "■",
--    },

    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
  },
})
