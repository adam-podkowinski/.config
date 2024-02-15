-- Bufferline
require("bufferline").setup({
    options = {
        themable = false,
        indicator = {
            style = "none",
        },
        separator_style = "thick",
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
                separator = true
            }
        },
        diagnostics = "nvim_lsp",
    },
})
