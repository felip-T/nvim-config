-- This file can be loaded by calling `lua require('plugins')` from your init.vim


-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim',
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
			{ 'hrsh7th/nvim-cmp' },  -- Required
			{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
			{ 'L3MON4D3/LuaSnip' },  -- Required
		}
	}

	use { "akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end }

	use { 'savq/melange-nvim' }
	use { 'ofirgall/ofirkai.nvim' }
	use { 'nyoom-engineering/oxocarbon.nvim' }
	use { 'https://github.com/FrenzyExists/aquarium-vim' }
	use { 'rebelot/kanagawa.nvim' }
	use { 'rose-pine/neovim' }
	use { 'tanvirtin/monokai.nvim' }
	use { 'navarasu/onedark.nvim' }
	use { 'catppuccin/nvim' }
	use { 'https://github.com/Mofiqul/dracula.nvim'}
	use {'https://github.com/bluz71/vim-moonfly-colors'}
	use {'https://github.com/kepano/flexoki-neovim'}

	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
	use 'nvim-treesitter/nvim-treesitter-context'

	use 'feline-nvim/feline.nvim'
	use 'nvim-tree/nvim-web-devicons'
	--
	-- use{'nvim-tree/nvim-tree.lua'}

	use { 'https://github.com/folke/zen-mode.nvim' }
	use { 'https://github.com/folke/twilight.nvim' }

	use { 'https://github.com/rhysd/vim-grammarous' }

	-- use {'ThePrimeagen/harpoon'}
	use { 'https://github.com/romgrk/barbar.nvim' }

	use {
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 700
			require("which-key").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	}
	use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = {
			"markdown" } end, ft = { "markdown" }, })

	use { 'Issafalcon/lsp-overloads.nvim' }

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	use { 'https://github.com/stevearc/oil.nvim' }

	use { 'chentoast/marks.nvim' }
end)
