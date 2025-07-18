require('nvim-autopairs').setup {
  disable_filetype = { "TelescopePrompt", "vim" },
  check_ts = true,
  fast_wrap = {
    map = '<M-e>',
    chars = { '{', '[', '(', '"', "'" },
    pattern = [=[[%'%"%>%]%)%}%,]]=],
    end_key = '$',
    keys = 'qwertyuiopzxcvbnmasdfghjkl',
  },
}
