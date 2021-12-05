call plug#begin(stdpath('data') . '/plugged')
  Plug 'nvim-lua/plenary.nvim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'airblade/vim-rooter'
  Plug 'liuchengxu/vim-which-key'
  Plug 'tpope/vim-surround'
  Plug 'itchyny/lightline.vim'
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
  Plug 'romgrk/github-light.vim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
  Plug 'neovim/nvim-lspconfig'
call plug#end()
