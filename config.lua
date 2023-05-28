-- Ui
nvoid.colorscheme = "onedarker"
nvoid.statusline.config = "%!v:lua.require('statusline').run()"
nvoid.log.level = "warn"
require("mappings")
require("builtins")
require("plugins")
require("lsp")
