-- =============================================================================
-- Core Neovim Options
-- =============================================================================

local g = vim.g
local opt = vim.opt

-- -----------------------------------------------------------------------------
-- General
-- -----------------------------------------------------------------------------

opt.mouse = 'a'                 -- Enables mouse supports.
opt.showmatch = true		    -- briefly jump to the matching bracket.
opt.wildmode = 'longest,list'	-- Bash-like command-line completion.
opt.swapfile = false            -- No swap files.
opt.clipboard = 'unnamedplus'   -- Use system clipboard.
opt.lazyredraw = true           -- Speeds up scrolling.
opt.foldmethod = 'marker'       -- Folding method for the current window.
opt.cursorline = true           -- Highlight cursor line.
opt.wrap = true                 -- Wrap words overflowing from the window.
opt.linebreak = true            -- Word breaks occur at specific characters only.
opt.shell = 'zsh'               -- Sets zsh as the default terminal emulator.
g.diminactive_enable_focus = 1  -- Un/Dimming on FocusLost and FocusGained.
opt.pumheight = 20              -- Reduce height of completion menus.

-- -----------------------------------------------------------------------------
-- Search
-- -----------------------------------------------------------------------------

opt.ignorecase = true	-- Ignore case in search patterns.
opt.smartcase = true	-- Case-sensitive search if uppercase letters are used.
opt.hlsearch = true	    -- Highlight search pattern matches.
opt.incsearch = true	-- Highlight matches as the search pattern is written.

-- -----------------------------------------------------------------------------
-- Identation
-- -----------------------------------------------------------------------------

opt.tabstop = 4		    -- Number of spaces a <Tab> counts for.
opt.softtabstop = 4	    -- Number of spaces a <Tab> counts for while editing.
opt.expandtab = true	-- Uses spaces when a <Tab> is inserted.
opt.shiftwidth = 4	    -- Number of spaces for each step of indent.
opt.autoindent = true	-- Auto-indentation.
opt.smartindent = true  -- Smart auto-indentation on new lines.

-- -----------------------------------------------------------------------------
-- Line Numbers
-- -----------------------------------------------------------------------------

opt.number = true
opt.relativenumber = true
