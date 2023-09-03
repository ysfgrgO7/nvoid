local M = {}

local m = reload "nvoid.ui.statusline.modules"
local cm = reload "ysf.ui.statusline.customModules"
local module = vim.tbl_extend("keep", m, cm)

M.run = function()
  return table.concat {
    " ",
    module.modeC(),
    " ",
    module.git(),
    module.lsp_diagnostics(),

    "%=",
    "%=",

    module.treesitter(),
    module.get_lsp(),
    module.scrollbar(),
  }
end

return M
