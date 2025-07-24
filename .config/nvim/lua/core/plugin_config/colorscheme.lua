vim.o.termguicolors = true
vim.cmd [[ colorscheme gruber-darker ]]


for _, group in ipairs(vim.fn.getcompletion('', 'highlight')) do
  local ok, hl = pcall(vim.api.nvim_get_hl_by_name, group, true)
  if ok and hl then
    vim.api.nvim_set_hl(0, group, {
      fg = hl.foreground and string.format("#%06x", hl.foreground) or nil,
      bg = hl.background and string.format("#%06x", hl.background) or nil,
      bold = true,
      italic = false,
      underline = false,
      undercurl = false,
      reverse = false,
      -- keep other attributes off
    })
  end
end

