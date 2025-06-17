-- NeoVim options configuration
-- This file contains all the basic editor options and settings

-- Set global variables
local g = vim.g
local opt = vim.opt

-- Leader key configuration
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set GUI font
vim.o.guifont = "IosevkaTerm Nerd Font Bold:h12"

-- Editor behavior
opt.backspace = '2'    -- Allow backspace over everything in insert mode
opt.showcmd = true     -- Show command in bottom bar
opt.laststatus = 2     -- Always show status line
opt.autowrite = true   -- Auto write when switching buffers
opt.autoread = true    -- Auto read when file is changed outside
opt.cursorline = true  -- Highlight current line

-- Indentation settings
opt.tabstop = 2        -- Number of spacers that <Tab> counts for
opt.shiftwidth = 2     -- Number of spaces to use for each step of (auto)indent
opt.expandtab = true   -- use spaces instead of tabs
opt.shiftround = true  -- Round indent of multiple 'shiftwidth'

-- Line numbers and ruler
opt.number = true          -- Show line numbers
opt.relativenumber = true  -- Show relative line numbers
opt.ruler = true           -- Show cursor position

-- Whitespace visualization
opt.list = true                  -- Show invisible characters
opt.listchars = { space = "·" }  -- Show spaces as dots

-- Set cursor shape to block in all modes
opt.guicursor = "n-v-c-sm:block,i-ci-ve:block,r-cr-o:block"
