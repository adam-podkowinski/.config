local color = require("onedarkpro.lib.color")
local onedarkpro = require("onedarkpro")

onedarkpro.setup({
  colors = {
    onedark = {
      bg = color.darken(onedarkpro.get_colors("onedark").bg, 0.8)
    }
  },
  highlights = {},
  filetypes = {},
  plugins = {},
  options = {
    bold = true,
    italic = true,
    underline = true,
    undercurl = true,
    cursorline = true,
    transparency = false,
    terminal_colors = true,
    highlight_inactive_windows = false,
  }
})

vim.cmd([[
colorscheme onedark
]])
