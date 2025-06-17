-- NeoVim key mappings configuration
-- This file contains all custom key mappings:w

-- Define common options for key mappings
local opts = { noremap = true, silent = true }

-- Search related mappings
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- File explorer
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- Quick save and quit mappings
vim.keymap.set('n', '<C-s>', ':w<CR>', opts)
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', opts)
vim.keymap.set('n', '<C-q>', ':q<CR>', opts)

-- Disable arrow keys in normal mode (vim-style movement)
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')
