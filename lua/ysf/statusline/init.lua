local S = {}

local M = reload("ysf.statusline.modules")

S.run = function()
  return table.concat({
    M.modeE(),
    M.fileInfo(),
    M.git(),

    "%=",
    M.lsp_progress(),
    "%=",

    M.get_lsp(),
    M.lsp_diagnostics(),
    M.scrollbar(),
  })
end
return S
