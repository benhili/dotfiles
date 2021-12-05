source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/plug-config/lsp.vim
source $HOME/.config/nvim/plug-config/lightline.vim
source $HOME/.config/nvim/plug-config/telescope.vim
source $HOME/.config/nvim/plug-config/rn.vim
source $HOME/.config/nvim/plug-config/neogit.vim

lua << EOF
require'lspconfig'.clojure_lsp.setup{}
EOF
