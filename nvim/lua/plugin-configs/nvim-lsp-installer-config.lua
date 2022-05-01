local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local enhance_server_opts = {
  ["emmet_ls"] = function(opts)
    opts.filetypes = {
      "html", "css", "scss", "javascriptreact", 'typescriptreact', 'javascript'
    }
  end,
}

require("nvim-lsp-installer").on_server_ready(function(server)
  local opts = {
    capabilities = capabilities,
    color = {
      enabled = true,
      background = true,
    }
  }

  if enhance_server_opts[server.name] then
    enhance_server_opts[server.name](opts)
  end

  server:setup(opts)
end)
