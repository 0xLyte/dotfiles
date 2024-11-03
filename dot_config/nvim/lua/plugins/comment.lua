-- Commenting pluging for neovim.

return {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
}
