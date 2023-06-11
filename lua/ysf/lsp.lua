vim.diagnostic.config({
  virtual_text = false
})
nvoid.lsp.format_on_save = false
nvoid.lsp.document_highlight = true
nvoid.lsp.installer.setup.ensure_installed = {
  "lua_ls",
  "bashls",
  "pyright",
}
