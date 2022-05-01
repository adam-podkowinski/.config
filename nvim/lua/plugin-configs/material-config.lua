vim.g.material_style = "deep ocean"
require("material").setup({
  italics = {
    comments = true,
    keywords = true,
  },

  disable = {
    background = true,
  },

  custom_highlights = {
    CursorLine = { bg = "#151a2b" },
    TSProperty = { fg = "#c4cfe4" },
  },
})

vim.cmd([[
colorscheme material
]])
