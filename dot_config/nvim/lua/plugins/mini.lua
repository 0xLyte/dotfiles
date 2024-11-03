return {
    'echasnovski/mini.nvim',
    version = '*',
    config = function ()
        -- Neovim Lua plugin with fast and feature-rich surround actions. Part of 'mini.nvim' library. 
        require('mini.surround').setup()
    end
}
