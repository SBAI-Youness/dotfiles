local gruber_darker_simple = {
  normal = {
    a = { fg = '#181818', bg = '#f4cf86', gui = 'bold' },
    b = { fg = '#f4f4ff', bg = '#2c2c2c' },
    c = { fg = '#f4f4ff', bg = '#181818' },
  },
  insert = {
    a = { fg = '#181818', bg = '#96a6c8', gui = 'bold' },
    b = { fg = '#f4f4ff', bg = '#2c2c2c' },
    c = { fg = '#f4f4ff', bg = '#181818' },
  },
  visual = {
    a = { fg = '#181818', bg = '#f4cf86', gui = 'bold' },
    b = { fg = '#f4f4ff', bg = '#2c2c2c' },
    c = { fg = '#f4f4ff', bg = '#181818' },
  },
  replace = {
    a = { fg = '#181818', bg = '#ff5f5f', gui = 'bold' },
    b = { fg = '#f4f4ff', bg = '#2c2c2c' },
    c = { fg = '#f4f4ff', bg = '#181818' },
  },
  inactive = {
    a = { fg = '#888888', bg = '#181818', gui = 'bold' },
    b = { fg = '#888888', bg = '#181818' },
    c = { fg = '#888888', bg = '#181818' },
  },
}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = gruber_custom,
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
}
