-- AutoSession takes advantage of Neovim's existing session management capabilities to provide seamless automatic session management.

return {
    "rmagatti/auto-session",
    config = function()
        local auto_session = require("auto-session")

        auto_session.setup({
            enabled = true,
            allowed_dirs = { "~/Projects/", "~/Research/" },
            session_lens = {
                load_on_setup = true, -- Initialize on startup (requires Telescope)
                previewer = false, -- File preview for session picker

                mappings = {
                    -- Mode can be a string or a table, e.g. {"i", "n"} for both insert and normal mode
                    delete_session = { "i", "<C-D>" },
                    alternate_session = { "i", "<C-S>" },
                    copy_session = { "i", "<C-Y>" },
                },

                session_control = {
                    control_dir = vim.fn.stdpath "data" .. "/auto_session/", -- Auto session control dir, for control files, like alternating between two sessions with session-lens
                    control_filename = "session_control.json", -- File name of the session control file
                },
            },
        })

        vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

        local keymap = vim.keymap
        keymap.set("n", "<leader>sr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
        keymap.set("n", "<leader>sf", "<cmd>SessionSearch<CR>", { desc = "Search for a session" })
        keymap.set("n", "<leader>ss", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" })
    end,
}
