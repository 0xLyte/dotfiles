return {
    'ThePrimeagen/harpoon',
    branch = "harpoon2",
    dependencies = 'nvim-lua/plenary.nvim',
    config = function()
        local harpoon = require("harpoon")
        local keymap = vim.keymap

        harpoon:setup()

        keymap.set("n", "<leader>hA", function() harpoon:list():prepend() end)
        keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
        keymap.set("n", "<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        keymap.set("n", "<leader>y", function() harpoon:list():select(1) end)
        keymap.set("n", "<leader>u", function() harpoon:list():select(2) end)
        keymap.set("n", "<leader>i", function() harpoon:list():select(3) end)
        keymap.set("n", "<leader>o", function() harpoon:list():select(4) end)
        keymap.set("n", "<leader>p", function() harpoon:list():select(5) end)
        keymap.set("n", "<leader>hy", function() harpoon:list():replace_at(1) end)
        keymap.set("n", "<leader>hu", function() harpoon:list():replace_at(2) end)
        keymap.set("n", "<leader>hi", function() harpoon:list():replace_at(3) end)
        keymap.set("n", "<leader>ho", function() harpoon:list():replace_at(4) end)
        keymap.set("n", "<leader>hp", function() harpoon:list():replace_at(4) end)
    end
}
