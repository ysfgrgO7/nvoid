vim.diagnostic.config {
  virtual_text = false,
}

vim.filetype.add {
  extension = {
    zsh = "zsh",
  },
}

vim.list_extend(nvoid.lsp.automatic_configuration.skipped_servers, { "bashls" })

nvoid.lsp.installer.setup.ensure_installed = {
  "lua_ls",
  "bashls",
  "pyright",
}

reload "ysf.lsp.formatting"
reload "ysf.lsp.langs.bashls"
reload "ysf.lsp.langs.lua_ls"
