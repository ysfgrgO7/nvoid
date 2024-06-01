nvoid.ui.colorscheme = "tokyonight"
nvoid.log.level = "warn"
nvoid.plugins = reload "ysf.plugins"
reload "ysf.ui"
reload "ysf.lsp"
reload "ysf.keymappings"
reload "ysf.plugins.builtins"
vim.o.timeout = true
vim.o.timeoutlen = 300
vim.cmd [[
  aunmenu PopUp.How-to\ disable\ mouse
  aunmenu PopUp.-1-
]]
