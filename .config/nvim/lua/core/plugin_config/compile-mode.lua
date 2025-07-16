vim.keymap.set('n', '<leader>cc', function()
    vim.cmd('belowright Compile')
end, { desc = 'Run Compile with belowright split' })

-- Define custom highlight groups for compile-mode.nvim
vim.api.nvim_set_hl(0, "CompileModeError", { fg = "#ff5555", bold = true }) -- Red for errors
vim.api.nvim_set_hl(0, "CompileModeWarning", { fg = "#ffff55", bold = true }) -- Yellow for warnings
vim.api.nvim_set_hl(0, "CompileModeInfo", { fg = "#55ff55", bold = true }) -- Green for info
vim.api.nvim_set_hl(0, "CompileModeMessage", { fg = "#ffffff", italic = true }) -- White for general messages
