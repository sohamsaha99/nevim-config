-- Basic, sane defaults for netrw

-- Show tree-style listing by default
vim.g.netrw_liststyle = 3

-- Split netrw window to the left
vim.g.netrw_altv = 1

-- Open files in a new split by default
vim.g.netrw_browse_split = 4

-- Hide banner at the top
-- vim.g.netrw_banner = 0

-- Use human-readable file sizes
vim.g.netrw_sizestyle = "H"

-- Sort by name, case-insensitive
vim.g.netrw_sort_sequence = [[[\/]$,*]]

-- Keep netrw in the same window (don’t clutter)
vim.g.netrw_keepdir = 0

-- Maximum width
vim.g.netrw_winsize = 15

-- netrw buffer settings
-- vim.g.netrw_bufsettings = "noma nomod nonu wrap ro nobl"

-- Show hidden files
vim.g.netrw_list_hide = vim.fn["netrw_gitignore#Hide"]() .. [[,\(^\|\s\s\)\zs\.\S\+]]
vim.g.netrw_hide = 0

-- Mapping for toggling netrw
-- vim.keymap.set("n", "<leader>e", ":Lexplore<CR>", { desc = "Open (or close if open) netrw" })

