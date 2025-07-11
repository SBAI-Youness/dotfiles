require("toggleterm").setup{
  size = 10,
  shade_terminals = true,
  shading_factor = 1,
  direction = 'horizontal', -- or 'vertical' | 'float'
  float_opts = {
    border = 'curved',
    winblend = 3,
  },
  open_mapping = [[<C-ù>]],
  insert_mappings = true,
  terminal_mappings = true,
}

vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal", noremap = true, silent = true })
