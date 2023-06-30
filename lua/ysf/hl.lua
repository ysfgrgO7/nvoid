local M = {}
M.add = {
  Coke = { bg = "black", fg = "white" },
  CokeUn = { bg = "darker_black", fg = "grey" },
  CokeUnsaved = { fg = 'green' },
  CokeClose = { fg = 'red', bg = 'red' },
  CokeFill = { bg = 'darker_black' }, -- tab pages line, where there are no labels
  -- Tree-sitter
  rainbowcol1 = { fg = 'red' },
  rainbowcol2 = { fg = 'yellow' },
  rainbowcol3 = { fg = 'green' },
  rainbowcol4 = { fg = 'teal' },
  rainbowcol5 = { fg = 'blue' },
  rainbowcol6 = { fg = 'purple' },
  rainbowcol7 = { fg = 'purple' },
  TSRainbowRed = { fg = 'red' },
  TSRainbowOrange = { fg = 'orange' },
  TSRainbowYellow = { fg = 'yellow' },
  TSRainbowGreen = { fg = 'green' },
  TSRainbowBlue = { fg = 'blue' },
  TSRainbowViolet = { fg = 'purple' },
  TSRainbowCyan = { fg = 'cyan' },
  -- Trouble
  TroubleText = { fg = 'white' },
  TroubleCount = { fg = 'purple', bg = 'grey' },
  TroubleNormal = { fg = 'white', bg = 'black' },
  -- Dap
  DapStoppedLine = { bg = 'orange' }, -- Used for "Warning" diagnostic virtual text
  -- Lsp
  LspCodeLens = { fg = 'grey' },
  LspInfoBorder = { fg = 'blue', bg = 'black' },
  ["@lsp.type.comment"] = { link = "@comment" },
  ["@lsp.type.enum"] = { link = "@type" },
  ["@lsp.type.enumMember"] = { link = "@constant" },
  ["@lsp.type.interface"] = { fg = 'blue' },
  ["@lsp.type.keyword"] = { link = "@keyword" },
  ["@lsp.type.namespace"] = { link = "@namespace" },
  ["@lsp.type.parameter"] = { link = "@parameter" },
  ["@lsp.type.property"] = { link = "@property" },
  ["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
  ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
  ["@lsp.typemod.macro.defaultLibrary"] = { link = "@function.builtin" },
  ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
  ["@lsp.typemod.operator.injected"] = { link = "@operator" },
  ["@lsp.typemod.string.injected"] = { link = "@string" },
  ["@lsp.typemod.type.defaultLibrary"] = { fg = 'blue' },
  ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
  ["@lsp.typemod.variable.injected"] = { link = "@variable" },
}
return M
