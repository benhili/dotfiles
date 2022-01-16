return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/plenary.nvim'
	use {
		"folke/which-key.nvim",
		config = function() 
			require("which-key").setup { }
		end
	}
  use 'tpope/vim-surround'
  use 'justinmk/vim-sneak'
  use 'junegunn/rainbow_parentheses.vim'
  use 'Olical/conjure'
  use 'TimUntersberger/neogit'

	use 'sainnhe/sonokai'
  use 'windwp/nvim-spectre'
  use 'nvim-telescope/telescope.nvim'
  use 'romgrk/barbar.nvim'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  use {'ms-jpq/coq_nvim', branch = 'coq'}
  use {'ms-jpq/coq.artifacts', branch = 'artifacts'}
  use {'ms-jpq/coq.thirdparty', branch = '3p'}

	use {
		'nvim-lualine/lualine.nvim', 
		requires = { 
			'kyazdani42/nvim-web-devicons', 
			opt = true 
		}
	}

  use {
		'ms-jpq/chadtree', 
		branch = 'chad', 
		run = 'python3 -m chadtree deps'
	}

	use {
		"ahmedkhalf/project.nvim",
		config = function() require("project_nvim").setup {} end 
	}

	use {
			'numToStr/Comment.nvim',
			config = function()
					require('Comment').setup()
			end
	}
end)
