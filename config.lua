-- Ui
nvoid.ui.colorscheme = "tokyonight"
nvoid.ui.statusline.config = "%!v:lua.require('ysf.statusline').run()"
nvoid.log.level = "warn"
reload("ysf.mappings")
reload("ysf.builtins")
reload("ysf.plugins")
reload("ysf.commands").load(require("ysf.commands").cmds)
require("ysf.lsp")
function SuppressMessage()
  vim.cmd('Git add %')
  vim.cmd('Git commit')
end
