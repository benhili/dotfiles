vim.cmd([[
autocmd BufWritePre *.go lua vim.lsp.buf.formatting()
autocmd BufWritePre *.clj lua vim.lsp.buf.formatting()
]])

require'lspconfig'.clojure_lsp.setup{}
require'lspconfig'.gopls.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.pyright.setup{}

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true              
  },
}


