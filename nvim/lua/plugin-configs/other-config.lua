require("gitsigns").setup()
require("telescope").load_extension("fzy_native")
require("nvim-tree").setup({
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
  update_focused_file = {
    enable = true,
    update_root = true
  },
  renderer = {
    highlight_git = true,
    indent_markers = {
      enable = true,
    },
  },
})
require("rest-nvim").setup()
require("indent_blankline").setup({
  show_current_context = true,
  space_char_blankline = " ",
})

require('lsp_signature').setup {
  floating_window = false
}
