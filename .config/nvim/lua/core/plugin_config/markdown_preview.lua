-- lua/core/plugin_config/markdown_preview.lua
vim.g.mkdp_auto_start = 0 -- Don't auto-start the preview
vim.g.mkdp_auto_close = 1 -- Auto-close preview when switching buffers
vim.g.mkdp_refresh_slow = 0 -- Refresh on every change
vim.g.mkdp_browser = 'firefox' -- Specify your browser (e.g., firefox, chrome)
vim.g.mkdp_theme = 'dark' -- Set theme (optional: 'dark' or 'light')

-- lua/core/keymaps.lua
local opts = { noremap = true, silent = true }

-- Start Markdown preview
vim.keymap.set("n", "<leader>mp", ":MarkdownPreview<CR>", opts)
-- Stop Markdown preview
vim.keymap.set("n", "<leader>ms", ":MarkdownPreviewStop<CR>", opts)
-- Toggle Markdown preview
vim.keymap.set("n", "<leader>mt", ":MarkdownPreviewToggle<CR>", opts)
