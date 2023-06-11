-- Ui
nvoid.ui.colorscheme = "tokyonight"
nvoid.ui.statusline.config = "%!v:lua.require('ysf.statusline').run()"
nvoid.log.level = "warn"
require("ysf.mappings")
require("ysf.builtins")
require("ysf.plugins")
require("ysf.commands").load(require("ysf.commands").cmds)
require("ysf.lsp")
function SuppressMessage()
  vim.cmd('Git add %')
  vim.cmd('Git commit')
end
