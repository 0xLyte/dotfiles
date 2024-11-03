-- Plugin to maximize a window.

return {
    "szw/vim-maximizer",
    keys = {
        { "<leader>wm", "<cmd>MaximizerToggle<CR>", desc = "Maximize/minimize a split" },
    },
}
