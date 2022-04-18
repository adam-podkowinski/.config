require("gitsigns").setup()
require("telescope").load_extension("fzy_native")
require("nvim-tree").setup({
	renderer = {
		indent_markers = {
			enable = true,
		},
	},
})
require("rest-nvim").setup()
require("indent_blankline").setup({
	show_current_context = true,
	space_char_blankline = " ",
})

require("nvim-lsp-installer").on_server_ready(function(server)
	local opts = {}
	server:setup(opts)
end)
