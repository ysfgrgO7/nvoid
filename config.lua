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
vim.o.timeout = true
vim.o.timeoutlen = 300
vim.cmd [[
  aunmenu PopUp.How-to\ disable\ mouse
  aunmenu PopUp.-1-
]]
