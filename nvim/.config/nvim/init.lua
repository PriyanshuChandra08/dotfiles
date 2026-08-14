-- ~~Appearance~~
-- Modern Neovim equivalent of your Vim commands
vim.opt.number = true         -- set number
vim.opt.autoindent = true     -- set autoindent
vim.opt.smartindent = true    -- set smartindent
vim.opt.hlsearch = true       -- set hlsearch
vim.opt.cursorline = true       -- set hlsearch
vim.opt.showmatch = true       -- set hlsearch
vim.cmd("syntax on")

vim.keymap.set('i', '(', '()<Left>')
vim.keymap.set('i', '[', '[]<Left>')
vim.keymap.set('i', '{', '{}<Left>')
--vim.keymap.set('i', '"', '""<Left>')

-- Syntax highlighting is enabled by default in Neovim, 
-- but you can explicitly enforce it using standard Vim commands:

-- vim.opt.cursorline          " Highlight the line where the cursor is
-- vim.opt.showmatch           " Highlight matching brackets (parentheses, etc.)
-- vim.opt.relativenumber      " Show distance from current line for easier jumping
-- vim.opt.scrolloff=8         " Keep 8 lines visible above/below cursor when scrolling
-- vim.opt.autoindent          " Copy indent from current line to next
-- vim.opt.smartindent         " Be smart about code blocks (e.g., after '{')
-- vim.opt.expandtab           " Use spaces instead of tabs (best for Python/JS)
-- vim.cmd("shiftwidth=4")        " Number of spaces for each auto-indent step
-- vim.cmd("tabstop=4")           " Number of spaces a <Tab> represents

-------------------------------------------------------------------------------
-- 2. Color Theme Selection
-------------------------------------------------------------------------------
-- Neovim includes great built-in themes: "habamax", "quiet", "lunaperche", "desert"
vim.cmd("colorscheme catppuccin")
--vim.cmd("colorscheme sorbet")

-------------------------------------------------------------------------------
-- 3. Background Opacity / Transparency Settings
-------------------------------------------------------------------------------
-- To change background opacity in Neovim, you must clear its solid background.
-- This forces Neovim to perfectly inherit whatever opacity you set in your Terminal.
local function clear_background()
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "NonText", { bg = "none" })
  vim.api.nvim_set_hl(0, "Comment", { italic = true, fg = "#6272a4" })
  vim.api.nvim_set_hl(0, "Search", { bg = "#b8ff6c", fg = "#282a36" })
end

-- Apply transparency immediately
clear_background()

-- Ensure transparency stays active even if you change themes later on
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = clear_background,
})
