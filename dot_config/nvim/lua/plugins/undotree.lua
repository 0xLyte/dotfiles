return {
    "mbbill/undotree",
    config = function ()
        local keymap = vim.keymap
        keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle)
    end
}
