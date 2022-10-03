-- Treesitter
require("nvim-treesitter.configs").setup({
  ensure_installed = "all",
  ignore_install = { "phpdoc" },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = false,
    colors = {
      "#ffdf01",
      "#da70d6",
      "#87cefa",
      "#37bf3e",
      "#1489e1",
    },
  },
})
