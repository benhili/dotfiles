vim.cmd([[
autocmd BufWritePre *.js lua vim.lsp.buf.formatting()
autocmd BufWritePre *.ts lua vim.lsp.buf.formatting()
autocmd BufWritePre *.py lua vim.lsp.buf.formatting()
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


