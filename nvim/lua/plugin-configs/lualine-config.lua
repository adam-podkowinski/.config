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
                    modified = ' ●', -- Text to show when the buffer is modified
                    alternate_file = '', -- Text to show to identify the alternate file
                    directory = '', -- Text to show when the buffer is a directory
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
