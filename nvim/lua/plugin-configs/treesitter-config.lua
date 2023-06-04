require("nvim-treesitter.configs").setup({
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
