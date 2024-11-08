return {
    'ThePrimeagen/harpoon',
    branch = "harpoon2",
    dependencies = 'nvim-lua/plenary.nvim',
    config = function()
        local harpoon = require("harpoon")
        local keymap = vim.keymap

        harpoon:setup()

        keymap.set("n", "<leader>A", function() harpoon:list():prepend() end)
        keymap.set("n", "<leader>a", function() harpoon:list():add() end)

        keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        keymap.set("n", "<C-1>", function() harpoon:list():select(1) end)
        keymap.set("n", "<C-2>", function() harpoon:list():select(2) end)
        keymap.set("n", "<C-3>", function() harpoon:list():select(3) end)
        keymap.set("n", "<C-4>", function() harpoon:list():select(4) end)
        keymap.set("n", "<C-5>", function() harpoon:list():select(5) end)
        keymap.set("n", "<C-6>", function() harpoon:list():select(6) end)
        keymap.set("n", "<C-7>", function() harpoon:list():select(7) end)
        keymap.set("n", "<C-8>", function() harpoon:list():select(8) end)
        keymap.set("n", "<C-9>", function() harpoon:list():select(9) end)
        keymap.set("n", "<leader><C-1>", function() harpoon:list():replace_at(1) end)
        keymap.set("n", "<leader><C-2>", function() harpoon:list():replace_at(2) end)
        keymap.set("n", "<leader><C-3>", function() harpoon:list():replace_at(3) end)
        keymap.set("n", "<leader><C-4>", function() harpoon:list():replace_at(4) end)
        keymap.set("n", "<leader><C-5>", function() harpoon:list():replace_at(5) end)
        keymap.set("n", "<leader><C-6>", function() harpoon:list():replace_at(6) end)
        keymap.set("n", "<leader><C-7>", function() harpoon:list():replace_at(7) end)
        keymap.set("n", "<leader><C-8>", function() harpoon:list():replace_at(8) end)
        keymap.set("n", "<leader><C-9>", function() harpoon:list():replace_at(9) end)
    end
}
