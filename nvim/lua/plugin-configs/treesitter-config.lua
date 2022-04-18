-- Treesitter
require("nvim-treesitter.configs").setup({
	ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
	highlight = {
		enable = true, -- false will disable the whole extension
	},
	indent = {
		enable = true,
	},
	rainbow = {
		enable = true,
		extended_mode = true,
		colors = {
			"#ffdf01",
			"#da70d6",
			"#87cefa",
			"#37bf3e",
			"#1489e1",
		},
	},
})
