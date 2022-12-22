-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local on_attach = function(_, bufnr)
  local buffer_options = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, buffer_options)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, buffer_options)
  vim.keymap.set('n', '<leader>i', vim.lsp.buf.implementation, buffer_options)
  vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, buffer_options)

  vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', buffer_options)
  vim.keymap.set('n', '<leader>l', '<cmd>Telescope lsp_document_symbols<cr>', buffer_options)
  vim.keymap.set('n', '<leader>d', '<cmd>Telescope diagnostics<cr>', buffer_options)

  vim.keymap.set('n', '<leader>tr', '<cmd>Trouble lsp_references<cr>', buffer_options)
  vim.keymap.set('n', '<leader>tl', '<cmd>Trouble lsp_document_symbols<cr>', buffer_options)
  vim.keymap.set('n', '<leader>tw', '<cmd>Trouble workspace_diagnostics<cr>', buffer_options)
  vim.keymap.set('n', '<leader>td', '<cmd>Trouble document_diagnostics<cr>', buffer_options)
end

-- C++ (clangd)
require('lspconfig')['clangd'].setup{
  capabilities = capabilities,
  on_attach = on_attach,
}

-- Python (pylsp)
require('lspconfig')['pylsp'].setup{
  capabilities = capabilities,
  on_attach = on_attach,
}

-- Go (gopls)
require('lspconfig')['gopls'].setup{
  capabilities = capabilities,
  on_attach = on_attach,
}

-- Rust (rust_analyzer)
require('lspconfig')['rust_analyzer'].setup{
  capabilities = capabilities,
  on_attach = on_attach,
}

-- Lua (sumneko_lua)
require('lspconfig')['sumneko_lua'].setup{
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        -- Make server stop suggesting turn on project related features
        checkThirdParty = false,
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
