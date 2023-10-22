require("nvim-treesitter.configs").setup({
  ensure_installed = "all",
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  rainbow = {
    enable = true,
    hlgroups = {
      'RainbowYellow',
      'RainbowViolet',
      'RainbowCyan',
      'RainbowGreen',
      'RainbowBlue',
    },
  },
})
