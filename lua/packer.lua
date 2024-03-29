local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

--[[ Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]
--]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- {{ DEFAULT }}
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins

  -- {{ DISPLAY }}
  use "vim-airline/vim-airline" -- statusbar
  use "ryanoasis/vim-devicons" -- file/directories icons

  -- {{ USUAL }}
  use "numToStr/Comment.nvim"
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
  }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }
  -- {{ THEME }}
  use "arcticicestudio/nord-vim"
  use "vim-airline/vim-airline-themes"
  use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
      end,
  }
  use "HiPhish/nvim-ts-rainbow2" -- color pairs
  use "norcalli/nvim-colorizer.lua" -- highlight color names
  use "shougo/vinarise.vim"

  -- {{ LSP }}
  use "neovim/nvim-lspconfig"
  use "williamboman/mason-lspconfig.nvim"
  use "williamboman/mason.nvim" -- LSP installer
  use "jose-elias-alvarez/null-ls.nvim" -- LSP diagnostics and code actions
  use "rubixninja314/vim-mcfunction" -- mcfunction sintax highlight

  -- {{ COMPLETION }}
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and tree-sitter
  use "hrsh7th/cmp-nvim-lsp"

  -- {{ SNIPPETS }}
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- {{ TELESCOPE }}
  use {
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" }
  }
  use "nvim-telescope/telescope-media-files.nvim"

  -- {{ GIT }}
  use "lewis6991/gitsigns.nvim" -- git implementation
  use "tpope/vim-fugitive"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
