call plug#begin(stdpath('data') . '/plugged')
  Plug 'nvim-lua/plenary.nvim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'airblade/vim-rooter'
  Plug 'liuchengxu/vim-which-key'
  Plug 'tpope/vim-surround'
  Plug 'justinmk/vim-sneak'
  Plug 'sheerun/vim-polyglot'
  Plug 'airblade/vim-gitgutter'
  Plug 'kevinhwang91/rnvimr'
  Plug 'rbgrouleff/bclose.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'itchyny/vim-gitbranch'
  Plug 'junegunn/rainbow_parentheses.vim'
  Plug 'yggdroot/indentline'
  Plug 'Olical/conjure'
  Plug 'TimUntersberger/neogit'
  Plug 'projekt0n/github-nvim-theme'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'romgrk/barbar.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

  Plug 'nvim-lualine/lualine.nvim'
  " If you want to have icons in your statusline choose one of these
  Plug 'kyazdani42/nvim-web-devicons'

  Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
  Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
  Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
  Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
call plug#end()
