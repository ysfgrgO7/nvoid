local M = {}

local bm = reload "nvoid.ui.statusline.modules"
local cm = reload "ysf.ui.statusline.modules"
local m = vim.tbl_extend("keep", bm, cm)

M.run = function()
  return table.concat {
    " ",
    m.modeM(),
    m.treesitter(),

    "%=",
    m.diff(),
    " | ",
    m.diagnostics(),
    "%=",

    "[",
    m.get_lsp(),
    "] ",
    m.scrollbar(),
  }
end

return M
