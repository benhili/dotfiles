let g:python_3_host_prog = '/usr/local/opt/python/libexec/bin/python'

" Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree' 
Plug 'itchyny/lightline.vim'
Plug 'sbdchd/neoformat'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'Yggdroot/indentLine'
Plug 'arcticicestudio/nord-vim'
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
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }
colorscheme nord
set background=dark
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
