vim.diagnostic.config({
  virtual_text = false
})
nvoid.format_on_save = true
nvoid.lsp.installer.setup.ensure_installed = {
  "lua_ls",
  "bashls",
  "pyright",
}
