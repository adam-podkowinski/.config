require("gitsigns").setup()
require("telescope").load_extension('fzy_native')
require("telescope").setup()
require("nvim-tree").setup({
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    update_focused_file = {
        enable = true,
        update_root = true
    },
    renderer = {
        highlight_git = true,
        indent_width = 3,
        indent_markers = {
            enable = true,
        },
    },
})
require("ibl").setup({
    -- scope = { show_start = false, show_end = false }
})

require 'colorizer'.setup {
    filetypes = { "*" },
    user_default_options = {
        tailwind = true,
        RGB = true,       -- #RGB hex codes
        RRGGBB = true,    -- #RRGGBB hex codes
        names = true,     -- "Name" codes like Blue or blue
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        AARRGGBB = true, -- 0xAARRGGBB hex codes
        rgb_fn = true,   -- CSS rgb() and rgba() functions
        hsl_fn = true,   -- CSS hsl() and hsla() functions
        css = true,      -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true,   -- Enable all CSS *functions*: rgb_fn, hsl_fn
    }
}

require("catppuccin").setup {
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = {     -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false, -- disables setting the background color.
}

vim.cmd.colorscheme "catppuccin"

require 'nvim-web-devicons'.setup {}

local rainbow_delimiters = require 'rainbow-delimiters'

vim.g.rainbow_delimiters = {
    strategy = {
        [''] = rainbow_delimiters.strategy['global'],
        vim = rainbow_delimiters.strategy['local'],
    },
    query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
    },
    highlight = {
        'RainbowDelimiterCyan',
        'RainbowDelimiterRed',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
    },
}

require('rainbow-delimiters.setup').setup {}

-- local rt = require("rust-tools")

-- local opts = {
-- server = {
--   on_attach = function(_, bufnr)
--     vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
--   end,
-- },
-- dap = {
--   adapter = require('rust-tools.dap').get_codelldb_adapter(
--     "/usr/lib/codelldb/adapter/codelldb",
--     "/usr/lib/codelldb/lldb/lib/liblldb.so"
--   )
-- }
-- }

-- require('rust-tools').setup(opts)
