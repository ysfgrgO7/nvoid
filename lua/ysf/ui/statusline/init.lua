local M = {}

local m = reload "nvoid.ui.statusline.modules"
local cm = reload "ysf.ui.statusline.customModules"

M.run = function()
  return table.concat {
    " ",
    cm.modeE(),
    " ",
    m.git(),
    m.lsp_diagnostics(),

    "%=",
    "%=",

    cm.treesitter(),
    m.get_lsp(),
    m.scrollbar(),
  }
end

return M
