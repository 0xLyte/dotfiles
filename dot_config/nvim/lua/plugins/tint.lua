-- Dim inactive windows in Neovim using window-local highlight namespaces. 

return {
    "levouh/tint.nvim",
    config = function()
        require("tint").setup({})
    end
}
