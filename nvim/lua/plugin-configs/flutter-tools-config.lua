require("flutter-tools").setup({
  ui = {
    border = "rounded",
  },
  decorations = {
    statusline = {
      app_version = true,
      device = true,
    }
  },
  lsp = --require('coq').lsp_ensure_capabilities(
  {
    cmd = { "dart", "/home/bodzio/software/flutter/flutter/bin/cache/dart-sdk/bin/snapshots/analysis_server.dart.snapshot", "--lsp" },
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
    color = { -- show the derived colours for dart variables
      enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
      background = true, -- highlight the background
      foreground = false, -- highlight the foreground
      virtual_text = false, -- show the highlight using virtual text
      virtual_text_str = "■", -- the virtual text character to highlight
    },
    init_options = {
      suggestFromUnimportedLibraries = true,
    },
  },
  --),
})
