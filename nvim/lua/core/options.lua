local g = vim.g
local opt = vim.opt

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

opt.backspace = '2'
opt.showcmd = true
opt.laststatus = 2
opt.autowrite = true
opt.autoread = true
opt.cursorline = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.shiftround = true
opt.number = true
opt.relativenumber = true
opt.ruler = true

opt.list = true
opt.listchars = { space = "·" }
