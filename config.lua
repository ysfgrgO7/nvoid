nvoid.ui.colorscheme = "ashes"
nvoid.log.level = "warn"
nvoid.plugins = reload "ysf.plugins"
reload "ysf.ui"
reload "ysf.lsp"
reload "ysf.keymappings"
reload "ysf.plugins.builtins"
reload "ysf.autocmds"
vim.o.timeout = true
vim.o.timeoutlen = 300
vim.api.nvim_command "set mousemodel=extend"
