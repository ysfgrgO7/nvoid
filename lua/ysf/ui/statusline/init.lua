local M = {}

local dm = reload "nvoid.ui.statusline.modules"
local cm = reload "ysf.ui.statusline.customModules"
local m = vim.tbl_extend("keep", dm, cm)

M.run = function()
  return table.concat {
    " ",
    m.modeM(),

    "%=",
    m.diff(),
    " | ",
    m.diagnostics(),
    "%=",

    m.treesitter(),
    m.get_lsp(),
    m.scrollbar(),
  }
end

return M
