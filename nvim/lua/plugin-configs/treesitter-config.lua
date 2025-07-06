require("nvim-treesitter.configs").setup({
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
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
