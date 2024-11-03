-- A minimal, stylish and customizable statusline, statuscolumn, and winbar for Neovim

return {
	"feline-nvim/feline.nvim",
	after = "catppuccin",
	config = function()
		require("feline").setup {
			components = require("catppuccin.groups.integrations.feline").get(),
		}
	end,
}
