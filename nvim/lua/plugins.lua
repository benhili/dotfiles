local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	'neovim/nvim-lspconfig',
	'nvim-lua/plenary.nvim',
	'tpope/vim-surround',
	'justinmk/vim-sneak',
	'junegunn/rainbow_parentheses.vim',
	'Olical/conjure',
	'TimUntersberger/neogit',
	'gelguy/wilder.nvim',
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",      -- required
			"nvim-telescope/telescope.nvim", -- optional
			"sindrets/diffview.nvim",     -- optional
			"ibhagwan/fzf-lua",           -- optional
		},
		config = true
	},
	'sainnhe/sonokai',
	'windwp/nvim-spectre',
	{
		'nvim-telescope/telescope.nvim',
		config = function()
			require('telescope').setup {
				defaults = { file_ignore_patterns = { ".git/" } },
				pickers = { find_files = { hidden = true } }
			}
		end
	},
	'romgrk/barbar.nvim',
	{ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },

	{ 'ms-jpq/coq_nvim',                 branch = 'coq' },
	{ 'ms-jpq/coq.artifacts',            branch = 'artifacts' },
	{ 'ms-jpq/coq.thirdparty',           branch = '3p' },
	'nvim-tree/nvim-web-devicons',
	"akinsho/toggleterm.nvim",
	'nvim-lualine/lualine.nvim',


	{
		'ms-jpq/chadtree',
		branch = 'chad',
		run = 'python3 -m chadtree deps'
	},

	{
		"ahmedkhalf/project.nvim",
		config = function() require("project_nvim").setup {} end
	},

	{
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	},

	{
		'lewis6991/gitsigns.nvim',
		requires = {
			'nvim-lua/plenary.nvim'
		},
		config = function()
			require('gitsigns').setup()
		end
	},

	{
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup {
				triggers_blacklist = {
					i = { "f", "d" },
					v = { "f", "d" },
				}
			}
		end
	},

	"nvim-telescope/telescope-file-browser.nvim"
})
