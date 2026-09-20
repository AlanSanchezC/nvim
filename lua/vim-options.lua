vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.o.number = true

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', opts)
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
