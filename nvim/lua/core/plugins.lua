local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

return packer.startup(function(use)
  -- Plugin manager (should go first)
  use 'wbthomason/packer.nvim'

  -- 0) Core
  local setup_core_plugins = function()
    -- Speedup neovim start
    use 'lewis6991/impatient.nvim'
    -- Package manager (especially useful for LSP)
    use 'williamboman/mason.nvim'
    use "williamboman/mason-lspconfig.nvim"
  end
  setup_core_plugins()

  -- 1) Langs
  local setup_languages_support = function()
    -- Formatting
    use 'jose-elias-alvarez/null-ls.nvim'
    -- Lsp
    use 'neovim/nvim-lspconfig'
    -- Completion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'hrsh7th/nvim-cmp'
    -- Hints with functions signature
    use "ray-x/lsp_signature.nvim"
    -- Syntax highlighting
    use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
      end,
    }
    -- Lsp progress bar
    use 'j-hui/fidget.nvim'
    -- Lsp rooter
    use "ahmedkhalf/lsp-rooter.nvim"
    -- Symbols outline
    use 'simrat39/symbols-outline.nvim'
  end
  setup_languages_support()

  -- 2) Colorscheme
  local setup_colorscheme = function()
    -- Themes
    use 'marko-cerovac/material.nvim'
    -- use 'EdenEast/nightfox.nvim'
    -- use 'rose-pine/neovim'
    -- use 'tiagovla/tokyodark.nvim'
    -- use 'folke/tokyonight.nvim'
    -- use 'Mofiqul/vscode.nvim'
    -- use 'sainnhe/everforest'
    -- use 'rebelot/kanagawa.nvim'
    -- use { "catppuccin/nvim", as = "catppuccin" }
    -- use 'projekt0n/github-nvim-theme'
  end
  setup_colorscheme()

  -- 3) Editor
  local setup_editor_related_plugins = function()
    -- Convenient way of commenting
    use 'numToStr/Comment.nvim'
    -- Autopairs
    use "windwp/nvim-autopairs"
    -- Rainbow for paranthes
    -- use 'p00f/nvim-ts-rainbow'
  end
  setup_editor_related_plugins()

  -- 4) IDE
  local setup_ide_like_features = function()
    -- Beauty notifications
    use 'rcarriga/nvim-notify'
    -- NvimTree (files navigator)
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      }
    }
    -- Trouble (alternative for quickfix)
    use {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons"
    }
    -- Telescope (search/finder plugin)
    -- depends on Trouble plugins, so should be initialized later
    use {
      'nvim-telescope/telescope.nvim',
      requires = { 'nvim-lua/plenary.nvim' }
    }
    -- Lualine (status line themes)
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    -- Bufferline (buffers themes)
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    -- Alpha (start screen)
    -- use 'goolord/alpha-nvim'
    -- Toggle term
    use { "akinsho/toggleterm.nvim", tag = '*' }
  end
  setup_ide_like_features()
end)
