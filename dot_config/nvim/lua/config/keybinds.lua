local keymap = vim.keymap

-- Binding the leader key to space.
keymap.set("n", "<SPACE>", "<Nop>")
vim.g.mapleader = " "

-- Binding escape to go back to normal mode in the terminal.
keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- Clear search highlighting.
keymap.set("n", "<leader>hc", ":noh<return>", { desc = "Clear the search highligth." })

-- Insert new lines without leaving Normal mode.
keymap.set("n", "<leader>o", "m`o<Esc>``", { desc = "Add a newline below the cursor in normal mode." })
keymap.set("n", "<leader>O", "m`O<Esc>``", { desc = "Add a newline above the cursor in normal mode." })

-- Window management.
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current split" })

-- Tab management.
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- diagnostic.
keymap.set("n", "<leader>xt", "<cmd>DiagnosticsToggle<CR>", { desc = "Toggle diagnostics." })
keymap.set("n", "<leader>xvt", "<cmd>DiagnosticsToggleVirtualText<CR>", { desc = "Toggle inline diagnostics." })

-- vim.keymap.set('n', '<leader>xt', function()
--   vim.diagnostic.enable(not vim.diagnostic.is_enabled())
-- end, { silent = true, noremap = true })

-- Convenient AZERTY bindings (Linux).
-- keymap.set({"n", "x"}, "&", "1")
-- keymap.set({"n", "x"}, "é", "2")
-- keymap.set({"n", "x"}, "\"", "3")
-- keymap.set({"n", "x"}, "'", "4")
-- keymap.set({"n", "x"}, "(", "5")
-- keymap.set({"n", "x"}, "-", "6")
-- keymap.set({"n", "x"}, "è", "7")
-- keymap.set({"n", "x"}, "_", "8")
-- keymap.set({"n", "x"}, "ç", "9")
-- keymap.set({"n", "x"}, "à", "0")
--
-- keymap.set({"n", "x"}, "1", "&")
-- keymap.set({"n", "x"}, "2", "é")
-- keymap.set({"n", "x"}, "3", "\"")
-- keymap.set({"n", "x"}, "4", "'")
-- keymap.set({"n", "x"}, "5", "(")
-- keymap.set({"n", "x"}, "6", "-")
-- keymap.set({"n", "x"}, "7", "è")
-- keymap.set({"n", "x"}, "8", "_")
-- keymap.set({"n", "x"}, "9", "ç")
-- keymap.set({"n", "x"}, "0", "à")
