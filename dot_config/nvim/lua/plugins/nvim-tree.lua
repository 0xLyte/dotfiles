-- A neovim file explorer.

return {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local nvimtree = require("nvim-tree")

        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        local function custom_on_attach(bufnr)
            local api = require "nvim-tree.api"

            local function opts(desc)
                return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
            end

            -- live grep using Telescope inside the current directory under
            -- the cursor (or the parent directory of the current file)
            local function grep_in()
                local node = api.tree.get_node_under_cursor()
                local path = node.absolute_path or vim.uv.cwd()
                if node.type ~= 'directory' and node.parent then
                    path = node.parent.absolute_path
                end
                require('telescope.builtin').live_grep({
                    search_dirs = { path },
                    prompt_title = string.format('Grep in [%s]', vim.fs.basename(path)),
                })
            end

            -- default mappings
            api.config.mappings.default_on_attach(bufnr)

            -- custom mappings
            vim.keymap.set('n', '<C-b>', api.tree.change_root_to_parent,        opts('Up'))
            vim.keymap.set('n', '<C-f>', api.tree.change_root_to_node,        opts('CD'))
            vim.keymap.set('n', '<C-g>', grep_in)
        end

        nvimtree.setup({
            view = {
                width = 35,
                relativenumber = true,
            },
            -- change folder arrow icons
            renderer = {
                indent_markers = {
                    enable = true,
                },
                icons = {
                    glyphs = {
                        folder = {
                            arrow_closed = "", -- arrow when folder is closed
                            arrow_open = "", -- arrow when folder is open
                        },
                    },
                },
            },
            -- disable window_picker for explorer to work well with
            -- window splits
            actions = {
                open_file = {
                    window_picker = {
                        enable = false,
                    },
                },
            },
            filters = {
                custom = { ".DS_Store" },
            },
            git = {
                ignore = false,
            },
            on_attach = custom_on_attach,
        })

        -- set keymaps
        local keymap = vim.keymap
        keymap.set("n", "<leader>ee", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
        keymap.set("n", "<leader>et", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
        keymap.set("n", "<leader>ef", "<cmd>NvimTreeFocus<CR>", { desc = "Focus file explorer" })
        keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
        keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })

    end
}
