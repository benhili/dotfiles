" Find files using Telescope command-line sugar.
nnoremap <leader>p <cmd>Telescope find_files<cr>
nnoremap <leader>. <cmd>Telescope live_grep<cr>
nnoremap <leader>bb <cmd>Telescope buffers<cr>

lua << EOF
require('telescope').setup{ defaults = { file_ignore_patterns = {"vendor"} } }
EOF

