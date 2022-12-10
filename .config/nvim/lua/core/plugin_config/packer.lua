local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
	-- My main theme
	use 'folke/tokyonight.nvim'
	-- my backup theme
	use {"dracula/vim", as = "dracula"}
	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-tree/nvim-web-devicons'
	use 'nvim-lualine/lualine.nvim'
	use 'nvim-treesitter/nvim-treesitter'
	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'}},
		run = ":TSUpdate"
	}
	use 'nvim-lua/popup.nvim'
	
	-- Transparence
	use 'xiyaowong/nvim-transparent'

	-- to get better at vim
	use 'ThePrimeagen/vim-be-good'

	-- for git
	use 'tpope/vim-fugitive'

	-- Language Server Protical
	use 'neovim/nvim-lspconfig'

	-- Mason for auto installing and setting up LSP's
	use 'williamboman/mason.nvim'

	-- Debug Adater Protocol
	use 'mfussenegger/nvim-dap'

	-- Language Server Injector
	use 'jose-elias-alvarez/null-ls.nvim'

	-- helps with shortcuts
	use {
  "folke/which-key.nvim",
  config = function()
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

-- lsp setup
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'

use 'L3MON4D3/LuaSnip'
use 'saadparwaiz1/cmp_luasnip'

	use {'glepnir/dashboard-nvim'}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
