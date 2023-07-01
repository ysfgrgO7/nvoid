vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.number = true
require("modicator").setup {
  show_warnings = true,
  highlights = {
    defaults = {
      bold = true,
      italic = false,
    },
  },
}
