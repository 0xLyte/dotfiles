-- Highlight, list and search todo comments in your projects 

return {
    "folke/todo-comments.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local todo_comments = require("todo-comments")

        local keymap = vim.keymap

        keymap.set("n", "<leader>cn", function()
            todo_comments.jump_next()
        end, { desc = "Next todo comment" })

        keymap.set("n", "<leader>cp", function()
            todo_comments.jump_prev()
        end, { desc = "Previous todo comment" })

        todo_comments.setup({
            highlight = {
                comments_only = false,
            },
        })
    end,
}
