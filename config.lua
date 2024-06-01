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
nvoid.lazy.opts.performance.rtp.disabled_plugins = {
  "2html_plugin",
  "tohtml",
  "getscript",
  "getscriptPlugin",
  "gzip",
  "logipat",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "matchit",
  "tar",
  "tarPlugin",
  "rrhelper",
  "spellfile_plugin",
  "vimball",
  "vimballPlugin",
  "zip",
  "zipPlugin",
  "tutor",
  "rplugin",
  "syntax",
  "synmenu",
  "optwin",
  "compiler",
  "bugreport",
  "ftplugin",
  "editorconfig",
}
