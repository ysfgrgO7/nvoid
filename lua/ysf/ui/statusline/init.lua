local S = {}

local M = reload("ysf.ui.statusline.modules")

S.run = function()
  return table.concat({
    M.git(),
    M.lsp_diagnostics(),

    "%=",
    "%=",

    M.get_lsp(),
    M.scrollbar(),
  })
end
return S
