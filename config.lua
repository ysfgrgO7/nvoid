nvoid.ui.colorscheme = "tokyonight"
nvoid.log.level = "warn"
nvoid.plugins = reload("ysf.plugins").list
reload "ysf.ui"
reload "ysf.lsp"
reload "ysf.keys"
reload "ysf.builtins.cmp"
reload "ysf.builtins.wk"
reload "ysf.builtins.nt"
reload "ysf.builtins.ts"
local common_opts = { force = true }
for _, cmds in pairs(reload "ysf.cmds") do
  local opts = vim.tbl_deep_extend("force", common_opts, cmds.opts or {})
  vim.api.nvim_create_user_command(cmds.name, cmds.fn, opts)
end
vim.cmd [[
  aunmenu PopUp.How-to\ disable\ mouse
  aunmenu PopUp.-1-
]]
