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
      require("core.plugin_config.colorscheme")
    end
  },

  -- File explorer
  {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require("core.plugin_config.nvim-tree")
    end
  },
  'nvim-tree/nvim-web-devicons',

  -- Status line
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require("core.plugin_config.lualine")
    end
  },

  -- Syntax highlighting
  {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require("core.plugin_config.treesitter")
    end
  },

  -- Fuzzy finder
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { {'nvim-lua/plenary.nvim'} },
    config = function()
      require("core.plugin_config.telescope")
    end
  },

  -- Markdown preview
  {
    'iamcco/markdown-preview.nvim',
    build = function() vim.fn["mkdp#util#install"]() end,
    ft = { "markdown" },
    config = function()
      require("core.plugin_config.markdown_preview")
    end
  },

  -- Auto pairs
  {
    'windwp/nvim-autopairs',
    config = function()
      require("core.plugin_config.autopairs")
    end
  },

  -- LSP
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  {
    'neovim/nvim-lspconfig',
    config = function()
      require("core.plugin_config.lsp_config")
    end
  },

  -- Completion
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'rafamadriz/friendly-snippets',
    },
    config = function()
      require("core.plugin_config.completions")
    end
  },

  -- Git
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require("core.plugin_config.git-stuff")
    end
  },
  'tpope/vim-fugitive',

  -- Show existing keymaps
  {
    'folke/which-key.nvim',
    event = "VeryLazy",
    config = function()
      require("core.plugin_config.whichkey")
    end,
  },

  -- Toogle terminal
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("core.plugin_config.toggleterm")
    end,
  },

  -- Compile Mode
  {
    'ej-shafran/compile-mode.nvim',
    branch = "latest",
    dependencies = {
      'nvim-lua/plenary.nvim',
      { "m00qek/baleia.nvim", tag = "v1.3.0" },
    },
    config = function()
      vim.g.compile_mode = {
          bang_expansion = true,
      }
      require("core.plugin_config.compile-mode")
    end
  },

  -- Image Preview
  {
    "3rd/image.nvim",
    config = function()
      require("image").setup({
        backend = "kitty",
        max_height_window_percentage = 50,
        hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.svg" },
      })
    end
  },

  -- Comments
  {
    'numToStr/Comment.nvim',
    config = function()
      require("core.plugin_config.comments")
    end
  },

  -- idk what this is hhh
  {
    'gisketch/triforce.nvim',
    dependencies = { 'nvzone/volt' },
    config = function()
      require("core.plugin_config.triforce")
    end,
  },
}

local opts = {}

require("lazy").setup(plugins, opts)
