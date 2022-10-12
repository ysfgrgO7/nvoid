local S = {}

local M = require("statusline.modules")

S.run = function()
  return table.concat({
    M.modeE(),
    M.filename(),
    M.git(),

    "%=",
    M.lsp(),
    M.diagnostics(),
    M.lsp_progress(),
    "%=",

    M.treesitter_status(),
    M.filetype(),
    M.scrollbar(),
  })
end
return S
