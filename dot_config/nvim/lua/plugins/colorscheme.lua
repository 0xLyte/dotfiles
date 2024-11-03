return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("catppuccin")
        vim.o.background = "dark"
        -- vim.api.nvim_set_hl(0, "NormalNC", { bg="#13111B" })

        require("catppuccin").setup({
            flavour = "mocha",
            variant = "main", -- auto, main, moon, or dawn
            dark_variant = "main", -- main, moon, or dawn
            dim_inactive = {
                enabled = true
            },
        })
    end
}
