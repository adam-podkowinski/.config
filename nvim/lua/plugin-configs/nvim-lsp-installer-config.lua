local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local enhance_server_opts = {
  -- Provide settings that should only apply to the "eslint" server
  ["emmet_ls"] = function(opts)
    opts.filetypes= {
      "html", "css", "javascript", "typescript"
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
    -- Enhance the default opts with the server-specific ones
    enhance_server_opts[server.name](opts)
  end

  server:setup(opts)
end)
