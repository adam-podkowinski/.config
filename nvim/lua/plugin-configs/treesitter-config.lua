require("nvim-treesitter.configs").setup({
    ensure_installed = "all",
    highlight = {
        enable = true,
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gn", -- set to `false` to disable one of the mappings
            node_incremental = "gp",
            scope_incremental = "go",
            node_decremental = "g[",
        },
    },
    indent = {
        enable = true,
    },
})
