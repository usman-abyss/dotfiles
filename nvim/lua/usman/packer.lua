-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use({ 'rose-pine/neovim',
	as = 'rose-pine'

});
use('nvim-treesitter/nvim-treesitter', { run= ':TSUpdate'})


-- ----------------- LSP ------------------------------------------------------
use {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v1.x',
	requires = {
		-- LSP Support
		{'neovim/nvim-lspconfig'},
		{'williamboman/mason.nvim'},
		{'williamboman/mason-lspconfig.nvim'},

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-buffer'},
		{'hrsh7th/cmp-path'},
		{'saadparwaiz1/cmp_luasnip'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'hrsh7th/cmp-nvim-lua'},
	}
}

use("folke/zen-mode.nvim")
use("github/copilot.vim")
use("eandrju/cellular-automaton.nvim")
use("laytan/cloak.nvim")
-- ----------------------------------------------------------------------------

-- Git
use('tpope/vim-fugitive')
use("airblade/vim-gitgutter")

-- Text Manipulation
use("tpope/vim-surround")

end)
