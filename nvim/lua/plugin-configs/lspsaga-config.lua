local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap("n", "<leader>e", ":Lspsaga show_line_diagnostics<CR>", opts)
vim.api.nvim_set_keymap("n", "[d", ":Lspsaga diagnostic_jump_prev<CR>", opts)
vim.api.nvim_set_keymap("n", "]d", ":Lspsaga diagnostic_jump_next<<CR>", opts)
vim.api.nvim_set_keymap("n", "K", ":Lspsaga hover_doc<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-k>", ":Lspsaga signature_help<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>R", ":Lspsaga rename<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>a", ":Lspsaga code_action<CR>", opts)
vim.api.nvim_set_keymap("v", "<leader>a", ":<C-u>Lspsaga range_code_action<CR>", opts)
