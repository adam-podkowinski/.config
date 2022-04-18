vim.g.material_style = "deep ocean"
require("material").setup({
	italics = {
		comments = true, -- Enable italic comments
		keywords = true, -- Enable italic keywords
	},

	high_visibility = {
		darker = true, -- Enable higher contrast text for darker style
	},

	disable = {
		background = true, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
		eob_lines = true, -- Hide the end-of-buffer lines
	},

	custom_highlights = {
		CursorLine = { bg = "#151a2b" },
		TSProperty = { fg = "#c4cfe4" },
	}, -- Overwrite highlights with your own
})

vim.cmd([[
colorscheme material
]])
