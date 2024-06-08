require("nvim-treesitter.configs").setup({
    ensure_installed = "all",
    ignore_install = { "zig" },
    highlight = {
        enable = true,
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn", -- set to `false` to disable one of the mappings
            node_incremental = "gp",
            scope_incremental = "go",
            node_decremental = "g[",
        },
    },
    indent = {
        enable = true,
    },
})
