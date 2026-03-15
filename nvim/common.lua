-- Basic Neovim config

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- enable syntax highlighting
vim.cmd("syntax on")

-- mouse support
vim.opt.mouse = "a"

-- encoding
vim.opt.encoding = "utf-8"

-- disable swap file
vim.opt.swapfile = false

-- scrolling
vim.opt.scrolloff = 7

-- tabs and indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

-- file format
vim.opt.fileformat = "unix"
