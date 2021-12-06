:let mapleader = "\<Space>"             
:let maplocalleader = ","             

set hidden                              " Required to keep multiple buffers open multiple buffers
set background=dark                     " tell vim what the background color looks like
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed 
set pumheight=10                        " Makes popup menu smaller
set timeoutlen=1000
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set showtabline=2                       " Always show tabs 
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set termguicolors
set number                              " Enables line numbers
syntax enable                           " Enables syntax highlighing

let g:rainbow_active = 1
let g:coq_settings = { 'auto_start': 'shut-up' }
let g:theme_style = "light"

colorscheme github_light

inoremap fd <Esc>
map <leader><Tab> :tabnext <CR>
map <leader>n :tabnew <CR>
nnoremap <silent> <Space> :WhichKey '<Space>'<CR>

nnoremap <silent><leader>bp :BufferPrevious<CR>
nnoremap <silent><leader>bn :BufferNext<CR>
nnoremap <silent><leader>bd :BufferClose<CR>
nnoremap <silent><leader>w/ :vsp<CR>
nnoremap <silent><leader>wv :sp<CR>

autocmd BufWritePre *.go lua vim.lsp.buf.formatting()
autocmd BufWritePre *.clj lua vim.lsp.buf.formatting()

lua << EOF
require'lspconfig'.clojure_lsp.setup{}
require'lspconfig'.gopls.setup{}
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true              
  },
}
EOF

