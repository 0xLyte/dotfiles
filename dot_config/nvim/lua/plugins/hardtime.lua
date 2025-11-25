return {
    "m4xshen/hardtime.nvim",
    lazy = false,
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {
        restriction_mode = "hint",
        disabled_keys = {
            ["<Up>"] = { "n", "x" },
            ["<Down>"] = { "n", "x" },
            ["<Left>"] = { "n", "x" },
            ["<Right>"] = { "n", "x" },
        }
    },
}
