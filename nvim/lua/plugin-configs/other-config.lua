require("gitsigns").setup()
local hop = require('hop')
hop.setup()

require 'colorizer'.setup {
    filetypes = { "*" },
    user_default_options = {
        tailwind = true,
        RGB = true,
        RRGGBB = true,
        names = true,
        RRGGBBAA = true,
        AARRGGBB = true,
        rgb_fn = true,
        hsl_fn = true,
        css = true,
        css_fn = true,
    }
}

require("catppuccin").setup {
    compile_path = vim.fn.stdpath "cache" .. "/catppuccin",
    flavour = "mocha",
    background = {
        dark = "mocha",
    },
    telescope = { enabled = true },
    transparent_background = true,
}

vim.cmd.colorscheme "catppuccin"

require 'nvim-web-devicons'.setup {}

vim.keymap.set(
    'n', "<Leader>;",
    function()
        hop.hint_words()
    end,
    { noremap = true })

require("image").setup({
    integrations = {
        markdown = {
            only_render_image_at_cursor = true
        }
    }
})
