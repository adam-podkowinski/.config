require("gitsigns").setup()
require("telescope").load_extension('fzy_native')
require("telescope").setup()
require("ibl").setup({
    scope = { enabled = false }
})

require 'colorizer'.setup {
    filetypes = { "*" },
    user_default_options = {
        tailwind = true,
        RGB = true,      -- #RGB hex codes
        RRGGBB = true,   -- #RRGGBB hex codes
        names = true,    -- "Name" codes like Blue or blue
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        AARRGGBB = true, -- 0xAARRGGBB hex codes
        rgb_fn = true,   -- CSS rgb() and rgba() functions
        hsl_fn = true,   -- CSS hsl() and hsla() functions
        css = true,      -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true,   -- Enable all CSS *functions*: rgb_fn, hsl_fn
    }
}

require("catppuccin").setup {
    compile_path = vim.fn.stdpath "cache" .. "/catppuccin",
    flavour = "mocha",
    background = {
        dark = "mocha",
    },
    telescope = { enabled = true },
    transparent_background = false,
}

vim.cmd.colorscheme "catppuccin"

require 'nvim-web-devicons'.setup {}

local rainbow_delimiters = require 'rainbow-delimiters'
require('rainbow-delimiters.setup').setup {}

-- local null_ls = require("null-ls")

-- null_ls.setup({
--     sources = {
--         null_ls.builtins.formatting.prettierd,
--         -- require("none-ls.diagnostics.eslint_d"),
--     },
-- })
