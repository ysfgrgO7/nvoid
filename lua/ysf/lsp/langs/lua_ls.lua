local lsp_manager = require "nvoid.lsp.manager"
lsp_manager.setup("lua_ls", {
  filetypes = { "lua" },
  on_init = require("nvoid.lsp").common_on_init,
  capabilities = require("nvoid.lsp").common_capabilities(),
})
