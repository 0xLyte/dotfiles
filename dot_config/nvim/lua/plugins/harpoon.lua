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

        keymap.set("n", "<leader><F6>", function() harpoon:list():select(1) end)
        keymap.set("n", "<leader><F7>", function() harpoon:list():select(2) end)
        keymap.set("n", "<leader><F8>", function() harpoon:list():select(3) end)
        keymap.set("n", "<leader><F9>", function() harpoon:list():select(4) end)
        keymap.set("n", "<leader>h<F6>", function() harpoon:list():replace_at(1) end)
        keymap.set("n", "<leader>h<F7>", function() harpoon:list():replace_at(2) end)
        keymap.set("n", "<leader>h<F8>", function() harpoon:list():replace_at(3) end)
        keymap.set("n", "<leader>h<F9>", function() harpoon:list():replace_at(4) end)
    end
}
