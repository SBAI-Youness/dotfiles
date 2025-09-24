-- Mason
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "clangd",
    "rust_analyzer",
    "ts_ls",      -- JS/TS/JSX/TSX
    "intelephense",  -- PHP
    "jdtls",         -- Java
  }
})

-- Common settings
local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, { desc = "Rename" })
  vim.keymap.set('n', '<leader>lc', vim.lsp.buf.code_action, { desc = "Code Action" })
  vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, { desc = "Go to Definition" })
  vim.keymap.set('n', '<leader>li', vim.lsp.buf.implementation, { desc = "Go to Implementation" })
  vim.keymap.set('n', '<leader>lD', vim.lsp.buf.declaration, { desc = "Go to Declaration" })
  vim.keymap.set('n', '<leader>lR', require('telescope.builtin').lsp_references, { desc = "References" })
  vim.keymap.set('n', '<leader>lh', vim.lsp.buf.hover, { desc = "Hover Doc" })
  vim.keymap.set('n', '<leader>ls', vim.lsp.buf.signature_help, { desc = 'Signature Help' })
  vim.keymap.set('n', '<leader>lf', function()
    vim.lsp.buf.format({ async = true })
  end, { desc = 'Format Code' })
  vim.keymap.set('n', '<leader>le', vim.diagnostic.open_float, { noremap = true, silent = true, desc = "Show diagnostics" })
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- New API (Neovim 0.11+)
vim.lsp.config["lua_ls"] = {
  on_attach = on_attach,
  capabilities = capabilities,
}

vim.lsp.config["clangd"] = {
  on_attach = on_attach,
  capabilities = capabilities,
}

vim.lsp.config["rust_analyzer"] = {
  on_attach = on_attach,
  capabilities = capabilities,
}

vim.lsp.config["ts_ls"] = {
  on_attach = on_attach,
  capabilities = capabilities,
}

vim.lsp.config["intelephense"] = {
  on_attach = on_attach,
  capabilities = capabilities,
}

vim.lsp.config["jdtls"] = {
  on_attach = on_attach,
  capabilities = capabilities,
}
