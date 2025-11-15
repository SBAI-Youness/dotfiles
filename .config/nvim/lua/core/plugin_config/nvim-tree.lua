vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  filters = {
    dotfiles = false,  -- show dotfiles
    custom = {},       -- no custom filter
    exclude = {},      -- don't exclude anything
  },
  git = {
    ignore = false,    -- show files that are ignored by git
  },
})

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
