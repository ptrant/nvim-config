-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- fuzzy finder
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- color schemes
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
	})

	use 'tanvirtin/monokai.nvim'
	use 'folke/tokyonight.nvim'
    use 'rafi/awesome-vim-colorschemes'

    -- airline - maybe replace?
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

	-- treesitter
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use ('nvim-treesitter/playground')

	-- harpoon
	use ('theprimeagen/harpoon')

	-- undo tree
	use('mbbill/undotree')

	-- vim-fugitive
	use('tpope/vim-fugitive')

    -- multi-cursor stuff
    use('mg979/vim-visual-multi')

	-- LSP (see github.com/ThePrimeagen/init.lua)
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

    -- VimBeGood
    use('ThePrimeagen/vim-be-good')

end)
