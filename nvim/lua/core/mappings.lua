vim.cmd [[
  highlight Comment gui=NONE
  highlight Italic gui=NONE
  highlight SpecialKey gui=NONE
]]

vim.o.guifont = "IosevkaTerm Nerd Font Bold:h12"

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- Quick save and quit
vim.keymap.set('n', '<C-s>', ':w<CR>', opts)
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', opts)
vim.keymap.set('n', '<C-q>', ':q<CR>', opts)

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Set cursor shape to block in all modes
vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:block,r-cr-o:block"
