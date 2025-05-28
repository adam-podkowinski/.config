require("nvim-tree").setup({
    sync_root_with_cwd = true,
    view = {
        side = "left",
    },
    respect_buf_cwd = true,
    update_focused_file = {
        enable = true,
        update_root = true
    },
    diagnostics = {
        enable = true,
        show_on_dirs = true,
    },
    renderer = {
        highlight_git = true,
        indent_width = 3,
        indent_markers = {
            enable = true,
        },
    },
})
