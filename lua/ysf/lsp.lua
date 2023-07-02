vim.diagnostic.config {
  virtual_text = false,
}
nvoid.format_on_save = true
nvoid.lsp.installer.setup.ensure_installed = {
  "lua_ls",
  "bashls",
  "pyright",
}

local formatters = require "nvoid.lsp.null-ls.formatters"
local lsp_manager = require "nvoid.lsp.manager"

--## LUA
lsp_manager.setup("lua_ls", {
  filetypes = { "lua" },
  on_init = require("nvoid.lsp").common_on_init,
  capabilities = require("nvoid.lsp").common_capabilities(),
})

--## SH
formatters.setup {
  { command = "stylua", filetypes = { "lua" } },
  { command = "shfmt", filetypes = { "sh", "zsh", "bash" } },
  { command = "prettier", filetypes = { "css", "javascript", "javascriptreact", "typescript", "typescriptreact" } },
}

vim.filetype.add {
  extension = {
    zsh = "zsh",
  },
}

vim.list_extend(nvoid.lsp.automatic_configuration.skipped_servers, { "bashls" })

lsp_manager.setup("bashls", {
  filetypes = { "sh", "zsh" },
  on_init = require("nvoid.lsp").common_on_init,
  capabilities = require("nvoid.lsp").common_capabilities(),
})
