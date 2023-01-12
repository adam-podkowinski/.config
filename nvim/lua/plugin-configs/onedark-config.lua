local helpers = require("onedarkpro.helpers")
local onedarkpro = require("onedarkpro")

onedarkpro.setup({
  colors = {
    onedark_vivid = {
      bg = helpers.darken(helpers.get_colors("onedark_vivid").bg, 0.7)
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
    cursorline = false,
    transparency = false,
    terminal_colors = true,
    highlight_inactive_windows = false,
  }
})

vim.cmd([[
colorscheme onedark_vivid
]])
