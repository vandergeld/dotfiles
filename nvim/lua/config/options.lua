-- Disable netrw (nvim-tree replaces it)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Mouse
vim.opt.mouse = "a"

-- Encoding
vim.opt.encoding = "utf-8"
vim.opt.fileformat = "unix"

-- No swap
vim.opt.swapfile = false

-- Scrolling
vim.opt.scrolloff = 7

-- Tabs and indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

-- Appearance
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
