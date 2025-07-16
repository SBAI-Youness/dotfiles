local gruber_darker_simple = {
  normal = {
    a = { fg = '#282828', bg = '#fabd2f', gui = 'bold' },
    b = { fg = '#f4e8ba', bg = '#504945' },
    c = { fg = '#ebdbb2', bg = '#282828' },
  },
  insert = {
    a = { fg = '#282828', bg = '#f4e8ba', gui = 'bold' },
    b = { fg = '#f4e8ba', bg = '#504945' },
    c = { fg = '#ebdbb2', bg = '#282828' },
  },
  visual = {
    a = { fg = '#282828', bg = '#d8a657', gui = 'bold' },
    b = { fg = '#f4e8ba', bg = '#504945' },
    c = { fg = '#ebdbb2', bg = '#282828' },
  },
  replace = {
    a = { fg = '#282828', bg = '#fb4934', gui = 'bold' },
    b = { fg = '#f4e8ba', bg = '#504945' },
    c = { fg = '#ebdbb2', bg = '#282828' },
  },
  inactive = {
    a = { fg = '#928374', bg = '#282828', gui = 'bold' },
    b = { fg = '#928374', bg = '#282828' },
    c = { fg = '#928374', bg = '#282828' },
  },
}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = gruber_darker_simple,
    globalstatus = true,
  },
  sections = {
    lualine_a = {
      {
        'mode',
      }
    },
    lualine_b = {
      {
        'filename',
        path = 1,
        symbols = { modified = '●', readonly = '🔒' },
      }
    },
    lualine_c = {
      {
        'branch',
        icon = '',
      },
    }
  }
}
