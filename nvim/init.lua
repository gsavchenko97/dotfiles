-- Core
require('core.options')
require('core.mappings')
require('core.plugins')

-- Plugins
-- 0) Core
require('plugins.0-core.impatient')
require('plugins.0-core.mason')
require('plugins.0-core.mason-lspconfig')
-- 1) Langs
require('plugins.1-langs.null-ls')
require('plugins.1-langs.nvim-cmp')
require('plugins.1-langs.nvim-lspconfig')
require('plugins.1-langs.nvim-treesitter')
require('plugins.1-langs.fidget')
require('plugins.1-langs.lsp_signature')
require('plugins.1-langs.symbols-outline')
-- 2) Colorscheme
require('plugins.2-colorscheme.material')
-- 3) Editor
require('plugins.3-editor.comment')
require('plugins.3-editor.nvim-autopairs')
-- 4) IDE
require('plugins.4-ide.nvim-notify')
require('plugins.4-ide.nvim-tree')
require('plugins.4-ide.trouble')
require('plugins.4-ide.telescope')
require('plugins.4-ide.lualine')
require('plugins.4-ide.bufferline')
-- require('plugins.4-ide.alpha-nvim')
require('plugins.4-ide.toggleterm')
