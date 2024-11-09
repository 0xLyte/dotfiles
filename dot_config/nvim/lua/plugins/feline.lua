-- A minimal, stylish and customizable statusline, statuscolumn, and winbar for Neovim

return {
    "feline-nvim/feline.nvim",
    after = "catppuccin",
    config = function()
        local ctp_feline = require('catppuccin.groups.integrations.feline')
        local components = ctp_feline.get()
        components.active[3][3].provider = function()
            local filename = vim.fn.expand "%:."
            local extension = vim.fn.expand "%:e"
            local present, icons = pcall(require, "nvim-web-devicons")
            local icon = present and icons.get_icon(filename, extension) or "󰈙"
            return ("%m" or "") .. " " .. icon .. " " .. filename .. " "
        end
        require("feline").setup {
            components = components,
        }
    end,
}
