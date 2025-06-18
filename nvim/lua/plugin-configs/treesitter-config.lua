require("nvim-treesitter.configs").setup({
    highlight = {
        enable = true,
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "P",
            node_incremental = "P",
            scope_incremental = "go",
            node_decremental = "g[",
        },
    },
    indent = {
        enable = true,
    },
})
