nmap <space>g :Neogit<CR>

lua << EOF
  local async = require "plenary.async"
  local neogit = require('neogit')

  neogit.setup {}
EOF

