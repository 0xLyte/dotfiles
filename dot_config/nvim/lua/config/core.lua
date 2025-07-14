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
-- Swap files, backups and undo
-- -----------------------------------------------------------------------------

HOME = os.getenv("HOME")
NVIM_DIR = HOME .. "/.nvim"
SWAP_DIR = NVIM_DIR .. "/swap"
BACKUPS_DIR = NVIM_DIR .. "/backups"
UNDO_DIR = NVIM_DIR .. "/undo"

function create_dir (name)
    if vim.fn.isdirectory(name) == 0 then
        vim.fn.mkdir(name, "p", "0o700")
    end
end

create_dir(NVIM_DIR)
create_dir(SWAP_DIR)
create_dir(BACKUPS_DIR)
create_dir(UNDO_DIR)

opt.directory = SWAP_DIR
opt.backupdir = BACKUPS_DIR
opt.undodir = UNDO_DIR

opt.swapfile = true     -- Enables swap files.
opt.backup = true       -- Enables backup files.
opt.undofile = true     -- Enables persistent undo.

-- Custom extensions for backup files.
vim.api.nvim_create_autocmd("BufWritePre", {
	callback = function()
		local extension = "~" .. vim.fn.strftime("%Y-%m-%d-%H%M%S")
		vim.o.backupext = extension
	end,
})

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

-- -----------------------------------------------------------------------------
-- Diagnostic
-- -----------------------------------------------------------------------------

-- Toggle inline diagnostics
vim.api.nvim_create_user_command(
    'DiagnosticsToggleVirtualText',
    function()
        local current_value = vim.diagnostic.config().virtual_text
        if current_value then
            vim.diagnostic.config({virtual_text = false})
        else
            vim.diagnostic.config({virtual_text = true})
        end
    end,
    {}
)

-- Toggle diagnostics
vim.api.nvim_create_user_command(
    'DiagnosticsToggle',
    function()
        local current_value = vim.diagnostic.is_enabled()
        if current_value then
            vim.diagnostic.enable(false)
        else
            vim.diagnostic.enable(true)
        end
    end,
    {}
)

-- -----------------------------------------------------------------------------
-- Language specific
-- -----------------------------------------------------------------------------

vim.api.nvim_create_augroup("AutoFormat", {})

-- Python ----------------------------------------------------------------------

-- Automatically format on save.
vim.api.nvim_create_autocmd(
    "BufWritePost",
    {
        pattern = "*.py",
        group = "AutoFormat",
        callback = function()
            vim.cmd("silent !black --line-length 79 --quiet %")
            vim.cmd("edit")
        end,
    }
)

-- 80-character column.
vim.api.nvim_create_autocmd(
    "BufEnter",
    {
        pattern = "*.py",
        callback = function()
            vim.opt.colorcolumn = "80"
            vim.cmd("")
        end,
    }
)


-- Rust ----------------------------------------------------------------------

-- Automatically format on save.
vim.api.nvim_create_autocmd(
    "BufWritePost",
    {
        pattern = "*.rs",
        group = "AutoFormat",
        callback = function()
            vim.cmd("silent !rustfmt %")
            vim.cmd("edit")
        end,
    }
)

-- 100-character column.
vim.api.nvim_create_autocmd(
    "BufEnter",
    {
        pattern = "*.rs",
        callback = function()
            vim.opt.colorcolumn = "100"
            vim.cmd("")
        end,
    }
)
