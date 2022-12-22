require("mason-lspconfig").setup({
    ensure_installed = { "clangd", "pylsp", "gopls", "sumneko_lua", "rust_analyzer" }
})
