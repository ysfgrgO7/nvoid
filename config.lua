-- Ui
nvoid.ui.colorscheme = "tokyonight"
nvoid.ui.statusline.config = "%!v:lua.require('statusline').run()"
nvoid.log.level = "warn"
require("mappings")
require("builtins")
require("plugins")
require("lsp")
function SuppressMessage()
  vim.cmd('Git add %')
  vim.cmd('Git commit')
end
