require("lualine").setup({
    options = {
        component_separators = { left = "┃", right = "" },
        section_separators = { left = "", right = "" },
        globalstatus = true,
    },
    tabline = {
        lualine_a = {
            {
                'buffers',
                symbols = {
                    modified = ' ●',
                    alternate_file = '',
                    directory = '',
                },
            },
        },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
    }
})
