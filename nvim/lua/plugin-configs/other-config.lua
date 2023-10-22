require("gitsigns").setup()
require("telescope").load_extension('fzy_native')
require("telescope").setup()
require("nvim-tree").setup({
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true
  },
  renderer = {
    highlight_git = true,
    indent_width = 3,
    indent_markers = {
      enable = true,
    },
  },
})
require("ibl").setup({
})

require('lsp_signature').setup {
  floating_window = false
}
require 'colorizer'.setup {
  user_default_options = {
    tailwind = true,
  }
}

require("monokai-pro").setup({
  background_clear = { "float_win", "nvim-tree", "bufferline" },
  plugins = {
    bufferline = {
      underline_selected = true,
      underline_visible = true,
    },
    indent_blankline = {
      context_highlight = "pro",
      context_start_underline = false,
    },
  }
})

vim.cmd [[colorscheme monokai-pro]]

require 'nvim-web-devicons'.setup {}

local dap = require('dap')

dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    command = '/usr/bin/codelldb',
    args = { "--port", "${port}" },
  }
}

dap.configurations.rust = {
  {
    name = "Rust debug",
    showDisassembly = "never",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.jobstart('cargo build')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = true,
  },
}

require("dapui").setup()

vim.keymap.set("n", "<leader>k", "<cmd>lua require('dapui').eval()<cr>", { noremap = true })
vim.keymap.set("n", "<F5>", "<cmd>lua require('dapui').toggle()<cr>", { noremap = true })

local rt = require("rust-tools")

local opts = {
  server = {
    on_attach = function(_, bufnr)
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
    end,
  },
  dap = {
    adapter = require('rust-tools.dap').get_codelldb_adapter(
      "/usr/lib/codelldb/adapter/codelldb",
      "/usr/lib/codelldb/lldb/lib/liblldb.so"
    )
  }
}

require('rust-tools').setup(opts)
