-- NeoVim key mappings configuration
-- This file contains all custom key mappings:w

-- Define common options for key mappings
local opts = { noremap = true, silent = true }

-- Search related mappings
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Ctrl + Alt + Arrow keys
vim.keymap.set('n', '<C-A-Left>',  '<C-w>h', { desc = 'Move to left split' })
vim.keymap.set('n', '<C-A-Down>',  '<C-w>j', { desc = 'Move to lower split' })
vim.keymap.set('n', '<C-A-Up>',    '<C-w>k', { desc = 'Move to upper split' })
vim.keymap.set('n', '<C-A-Right>', '<C-w>l', { desc = 'Move to right split' })

-- Ctrl + Alt + h/j/k/l
vim.keymap.set('n', '<C-A-h>', '<C-w>h', { desc = 'Move to left split' })
vim.keymap.set('n', '<C-A-j>', '<C-w>j', { desc = 'Move to lower split' })
vim.keymap.set('n', '<C-A-k>', '<C-w>k', { desc = 'Move to upper split' })
vim.keymap.set('n', '<C-A-l>', '<C-w>l', { desc = 'Move to right split' })

-- Move current line or selected lines up/down
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true })  -- Alt + j to move down
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true })  -- Alt + k to move up
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('n', '<A-Up>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.keymap.set('n', '<A-Down>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.keymap.set('v', '<A-Up>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', '<A-Down>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
