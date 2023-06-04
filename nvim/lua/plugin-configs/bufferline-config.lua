-- Bufferline
require("bufferline").setup({
  options = {
    themable = true,
    indicator = {
      style = "none",
    },
    separator_style = "none",
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "center",
        separator = true
      }
    },
    diagnostics = "nvim_lsp",
  },
})
