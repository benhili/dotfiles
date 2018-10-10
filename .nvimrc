let g:python_3_host_prog = '/usr/local/opt/python/libexec/bin/python'

" Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree' 
Plug 'ervandew/supertab'
Plug 'itchyny/lightline.vim'
Plug 'sbdchd/neoformat'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi'
Plug 'connorholyday/vim-snazzy'
" All of your Plugins must be added before the following line
call plug#end()            " required

inoremap jj <Esc>
set number
filetype plugin indent on
syntax on
map <C-n> :NERDTreeToggle<CR>

" Format python files on save
augroup _go
  autocmd!		
  autocmd BufWritePre *.py Neoformat! python black
augroup END
