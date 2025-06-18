-- Telescope
require('telescope').setup {
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
        }
    }
}
require('telescope').load_extension('fzf')
vim.api.nvim_set_keymap("n", "gr", "<cmd>Telescope lsp_references<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gd", "<cmd>Telescope lsp_definitions<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>d", "<cmd>Telescope lsp_type_definitions<CR>", { noremap = true, silent = true })
