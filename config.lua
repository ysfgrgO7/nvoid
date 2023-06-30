-- Ui
nvoid.ui.colorscheme = "tokyonight"
nvoid.ui.statusline.config = "%!v:lua.reload('ysf.statusline').run()"
nvoid.log.level = "warn"
nvoid.ui.hl_add = reload("ysf.hl").add
-- nvoid.ui.hl_override = reload("ysf.hl").change
reload("ysf.builtins")
