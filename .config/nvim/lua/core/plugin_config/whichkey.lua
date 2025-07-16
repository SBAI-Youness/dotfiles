local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

-- Configure which-key
which_key.setup({
  preset = "modern", -- Clean, modern look
  delay = 300, -- Delay for popup (ms)
  icons = {
    breadcrumb = "»", -- Separator for key bindings
    separator = "➜", -- Separator for key and description
    group = "+", -- Icon for keymap groups
  },
  win = {
    border = "single", -- Popup border style
    padding = { 1, 2 }, -- Padding: { top/bottom, left/right }
  },
  -- Enable automatic detection of existing keymaps
  show_keys = true,
})

-- Optional: Define groups for better organization
local groups = {
  { "<leader>f", group = "Telescope" }, -- Group for file-related commands
  { "<leader>g", group = "Git" }, -- Group for git-related commands
  { "<leader>m", group = "Markdown" }, -- Group for markdown-related commands
  { "<leader>t", group = "Terminal" },
  { "<leader>c", group = "Compile mode" },
}

-- Register groups (no need to define individual keymaps)
which_key.add(groups)
