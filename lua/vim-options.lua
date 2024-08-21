local o = vim.opt
local g = vim.g

g.mapleader = " "

o.expandtab = true
o.smartindent = true
o.shiftwidth = 2
o.tabstop = 2
o.softtabstop = 2

o.number = true
o.relativenumber = true
o.mouse = ''
o.cursorline = true
o.breakindent = true
o.scrolloff = 5

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.wo.signcolumn = "yes"
-- vim.o.signcolumn = 'number'
