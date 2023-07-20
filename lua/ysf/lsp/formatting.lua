nvoid.format_on_save = true
local formatters = require "nvoid.lsp.null-ls.formatters"
formatters.setup {
  { command = "stylua", filetypes = { "lua" } },
  { command = "shfmt", filetypes = { "sh", "zsh", "bash" } },
  { command = "prettier", filetypes = { "css", "javascript", "javascriptreact", "typescript", "typescriptreact" } },
  { command = "black", filetypes = { "python" } },
}
