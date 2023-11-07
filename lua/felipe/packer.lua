-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use {
		'github/copilot.vim'
	}

	use {
		'https://github.com/mbbill/undotree'
	}

	use {
		'tpope/vim-fugitive'
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' }, -- Required
			{
				-- Optional
				'williamboman/mason.nvim',
				run = function()
					pcall(vim.cmd, 'MasonUpdate')
				end,
			},
			{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' }, -- Required
			{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
			{ 'L3MON4D3/LuaSnip' }, -- Required
		}
	}

	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
	end}

	use { 'savq/melange-nvim' }
	use { 'ofirgall/ofirkai.nvim' }
	use {'nyoom-engineering/oxocarbon.nvim'}

	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use 'nvim-treesitter/nvim-treesitter-context'

	use 'feline-nvim/feline.nvim'
	use 'nvim-tree/nvim-web-devicons'

	use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
})

use{'nvim-tree/nvim-tree.lua'}

use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}

use {'chentoast/marks.nvim'}
end)
