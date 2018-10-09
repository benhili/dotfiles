call plug#begin('~/.local/share/nvim/plugged')
" let Vundle manage Vundle, required
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree' 
Plug 'davidhalter/jedi-vim'
Plug 'ervandew/supertab'
Plug 'itchyny/lightline.vim'
" All of your Plugins must be added before the following line
call plug#end()            " required
inoremap jj <Esc>
set number
filetype plugin indent on
syntax on
map <C-n> :NERDTreeToggle<CR>
