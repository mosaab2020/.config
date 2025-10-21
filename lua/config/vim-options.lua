local o = vim.opt
local g = vim.g

g.mapleader = " "
g.have_nerd_font = true

o.expandtab = true
o.smartindent = true
o.ignorecase = true
o.shiftwidth = 2
o.tabstop = 2
o.softtabstop = 2

o.number = true
o.relativenumber = true
o.mouse = ''
o.cursorline = true
o.breakindent = true
o.scrolloff = 4
o.fileformat = 'unix'
o.swapfile = false

-- o.winborder = "none"
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
vim.wo.signcolumn = "yes"
vim.loader.enable()
