call plug#begin(stdpath('data') . '/plugged')
  Plug 'vim/killersheep'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'liuchengxu/vim-which-key'
  Plug 'tpope/vim-surround'
  Plug 'gosukiwi/vim-atom-dark'
  Plug 'cocopon/iceberg.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'ayu-theme/ayu-vim'
  Plug 'justinmk/vim-sneak'
  Plug 'mhinz/vim-startify'
  Plug 'sheerun/vim-polyglot'
  Plug 'elixir-editors/vim-elixir'
  Plug 'airblade/vim-gitgutter'
  Plug 'junegunn/goyo.vim'
  Plug 'amix/vim-zenroom2'
  Plug 'kevinhwang91/rnvimr'
  Plug 'rbgrouleff/bclose.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-fugitive'
call plug#end()
