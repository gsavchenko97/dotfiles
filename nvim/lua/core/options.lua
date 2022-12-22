-- Indentations
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
-- vim.opt.shiftwidth = 4
-- vim.opt.tabstop = 4
-- vim.opt.softtabstop = 4

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Line appearance
vim.opt.wrap = false
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 5
vim.opt.cursorline = true
vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Buffer
vim.opt.hidden = true
vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.backup = false

-- Left columns
vim.opt.number = true
-- vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

-- Window bar
-- vim.opt.winbar = "%=%m %f"
-- vim.opt.winbar = "%{%v:lua.require('common.win').eval()%}"

-- LSP settings
vim.opt.completeopt = {"menu", "menuone", "noselect"}

vim.lsp.handlers["textDocument/hover"] =
  vim.lsp.with(
  vim.lsp.handlers.hover,
  {
    border = "single"
  }
)

-- Russian lang configurations
vim.opt.langmap = "БЮЖФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;\\<>:ABCDEFGHIJKLMNOPQRSTUVWXYZ,бюжфисвуапршолдьтщзйкыегмцчня;\\,.;abcdefghijklmnopqrstuvwxyz"

-- Misc
vim.opt.clipboard = "unnamedplus"
vim.opt.fileencoding = 'utf-8'
vim.opt.laststatus = 3
vim.opt.termguicolors = true  -- Needed for bufferline plugin
