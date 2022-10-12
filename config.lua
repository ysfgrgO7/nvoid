-- Ui
nvoid.colorscheme = "onedarker"
nvoid.statusline.config = "%!v:lua.require('statusline').run()"
nvoid.log.level = "warn"
require("mappings")
require("lsp")
require("builtins")
require("plugins")
local notify = require("notify")
vim.notify = notify
vim.notify = function(msg, log_level)
  if msg:match("exit code") then
    return
  end
  if log_level == vim.log.levels.ERROR then
    vim.api.nvim_err_writeln(msg)
  else
    vim.api.nvim_echo({ { msg } }, true, {})
  end
end
