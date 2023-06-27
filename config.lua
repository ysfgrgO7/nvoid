-- Ui
nvoid.ui.colorscheme = "tokyonight"
nvoid.ui.statusline.config = "%!v:lua.reload('ysf.statusline').run()"
nvoid.ui.hl_add = reload("ysf.hl").add
nvoid.log.level = "warn"
reload("ysf.builtins")
reload("ysf.bufferline.run")
