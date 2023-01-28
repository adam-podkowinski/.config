require("nvim-treesitter.configs").setup({
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  rainbow = {
    enable = true,
    max_file_lines = nil,
    colors = {
      "#ffdf01",
      "#da70d6",
      "#87cefa",
      "#37bf3e",
      "#1489e1",
    },
  },
})
