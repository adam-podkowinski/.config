require("catppuccin").setup {
    compile_path = vim.fn.stdpath "cache" .. "/catppuccin",
    flavour = "mocha",
    background = {
        dark = "mocha",
    },
    transparent_background = false,
    integrations = {
        mason = true,
        hop = true,
        snacks = true,
    }
}

vim.cmd.colorscheme "catppuccin"

local hop = require("hop")
hop.setup()
vim.keymap.set(
    'n', "<Leader>;",
    function()
        hop.hint_words()
    end,
    { noremap = true }
)
