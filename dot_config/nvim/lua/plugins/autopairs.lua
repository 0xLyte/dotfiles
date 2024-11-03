-- A super powerful autopair plugin for Neovim that supports multiple characters.

return {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true,
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
    opts = {
        fast_wrap = {
          map = '<M-e>',
          chars = { '{', '[', '(', '"', "'" },
          pattern = [=[[%'%"%>%]%)%}%,]]=],
          end_key = '$',
          before_key = 'h',
          after_key = 'l',
          cursor_pos_before = true,
          keys = 'azertyuiopqsdfghjklmwxcvbn',
          manual_position = true,
          highlight = 'Search',
          highlight_grey='Comment'
        },
    }
}
