require("tokyonight").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  light_style = "day", -- The theme is used when the background is set to light
  --transparent = true, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
  --   -- Style to be applied to different syntax groups
  --   -- Value is any valid attr-list value for `:help nvim_set_hl`
  comments = { italic = true },
  keywords = { italic = true },
  --   functions = {},
  --   variables = {},
  --   -- Background styles. Can be "dark", "transparent" or "normal"
  --   sidebars = "dark", -- style for sidebars, see below
  --   floats = "dark", -- style for floating windows
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  hide_inactive_statusline = true,
  dim_inactive = false, -- dims inactive windows
  lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold
})

vim.cmd([[
colorscheme tokyonight-night
]])
