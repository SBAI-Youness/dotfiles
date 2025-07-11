local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
  -- Colorscheme
  {
    'blazkowolf/gruber-darker.nvim',
    config = function()
      vim.o.termguicolors = true
      vim.cmd([[colorscheme gruber-darker]])
    end
  },

  -- File explorer
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',

  -- Status line
  'nvim-lualine/lualine.nvim',

  -- Syntax highlighting
  'nvim-treesitter/nvim-treesitter',

  -- Fuzzy finder
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },

  -- Markdown preview
  {
    'iamcco/markdown-preview.nvim',
    run = function() vim.fn["mkdp#util#install"]() end,
    ft = { "markdown" },
  },

  -- Auto pairs
  'windwp/nvim-autopairs',

  -- LSP
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',

  -- Completion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  'rafamadriz/friendly-snippets',

  -- Git
  'lewis6991/gitsigns.nvim',
  'tpope/vim-fugitive',

  -- Show existing keymaps
  {
    'folke/which-key.nvim',
    event = "VeryLazy",
    opts = {},
  },

  -- Toogle terminal
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("core.plugin_config.toggleterm")
    end,
  },

  {
    'ej-shafran/compile-mode.nvim',
    branch = "latest",
    dependencies = {
      'nvim-lua/plenary.nvim',
      { "m00qek/baleia.nvim", tag = "v1.3.0" },
    },
    config = function()
      ---@type CompileModeOpts
      vim.g.compile_mode = {
            -- to add ANSI escape code support, add:
            -- baleia_setup = true,

            -- to make `:Compile` replace special characters (e.g. `%`) in
            -- the command (and behave more like `:!`), add:
          bang_expansion = true,
        }
    end
  },
}

local opts = {}

require("lazy").setup(plugins, opts)
