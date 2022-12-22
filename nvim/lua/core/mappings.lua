local keymap = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

keymap('', '<Space>', '<Nop>', options)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- 1) Common keymaps
local set_common_keymaps = function()
  -- Window navigation
  keymap('n', '<C-j>', '<C-w>j', options)
  keymap('n', '<C-k>', '<C-w>k', options)
  keymap('n', '<C-h>', '<C-w>h', options)
  keymap('n', '<C-l>', '<C-w>l', options)

  -- Save all buffers
  keymap('n', '<leader>s', '<cmd>wa<cr>', options)
  keymap('n', '<leader>ы', '<cmd>wa<cr>', options)

  -- Close all buffers
  keymap('n', '<leader>q', '<cmd>qa<cr>', options)
  keymap('n', '<leader>й', '<cmd>qa<cr>', options)

  -- Close buffers
  keymap('n', '<leader>w', '<cmd>bd<cr>', options)
  keymap('n', '<leader>ц', '<cmd>bd<cr>', options)

  -- Resize windows
  keymap('n', '<C-Up>', '<cmd>resize +2<cr>', options)
  keymap('n', '<C-Down>', '<cmd>resize -2<cr>', options)
  keymap('n', '<C-Right>', '<cmd>vertical resize +2<cr>', options)
  keymap('n', '<C-Left>', '<cmd>vertical resize -2<cr>', options)

  -- Move lines
  keymap('v', '<', '<gv', options)
  keymap('v', '>', '>gv', options)

  -- Paste don't reset buffer
  keymap('v', 'p', '"_dP', options)

  -- Navigate buffers
  keymap('n', '<S-h>', '<cmd>bprevious<cr>', options)
  keymap('n', '<S-l>', '<cmd>bnext<cr>', options)
end
set_common_keymaps()

-- 2) Plugins keymaps
local set_plugins_keymaps = function()
  -- NvimTree open/close
  keymap('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', options)
  keymap('n', '<leader>у', '<cmd>NvimTreeToggle<cr>', options)

  -- Close quickfix buffer
  keymap('n', '<leader>c', '<cmd>TroubleToggle<cr>', options)
  keymap('n', '<leader>с', '<cmd>TroubleToggle<cr>', options)

  -- SymbolsOutline toggle
  keymap('n', '<leader>o', '<cmd>SymbolsOutline<cr>', options)
  keymap('n', '<leader>щ', '<cmd>SymbolsOutline<cr>', options)

  -- Telescope for buffers
  keymap('n', '<leader>b', '<cmd>Telescope buffers<cr>', options)
  keymap('n', '<leader>и', '<cmd>Telescope buffers<cr>', options)

  -- Telescope for files
  keymap('n', '<leader>p', "<cmd>Telescope find_files<cr>", options)
  keymap('n', '<leader>з', "<cmd>Telescope find_files<cr>", options)

  -- Telescope for fuzzy search
  keymap('n', '<leader>f', '<cmd>Telescope current_buffer_fuzzy_find<cr>', options)
  keymap("n", '<leader>а', '<cmd>Telescope current_buffer_fuzzy_find<cr>', options)

  -- Telescope for live grep
  keymap('n', '<leader>g', '<cmd>Telescope live_grep<cr>', options)
  keymap('n', '<leader>п', '<cmd>Telescope live_grep<cr>', options)
end
set_plugins_keymaps()
