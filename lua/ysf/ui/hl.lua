local M = {}
M.add = {
  Coke = { bg = "black", fg = "white" },
  CokeUn = { bg = "darker_black", fg = "grey" },
  CokeUnsaved = { fg = "green" },
  CokeClose = { fg = "red", bg = "red" },
  CokeFill = { bg = "darker_black" }, -- tab pages line, where there are no labels
  CokeSep = { bg = "blue", fg = "blue" },
  -- Tree-sitter
  rainbowcol1 = { fg = "red" },
  rainbowcol2 = { fg = "yellow" },
  rainbowcol3 = { fg = "green" },
  rainbowcol4 = { fg = "teal" },
  rainbowcol5 = { fg = "blue" },
  rainbowcol6 = { fg = "purple" },
  rainbowcol7 = { fg = "purple" },
  TSRainbowRed = { fg = "red" },
  TSRainbowOrange = { fg = "orange" },
  TSRainbowYellow = { fg = "yellow" },
  TSRainbowGreen = { fg = "green" },
  TSRainbowBlue = { fg = "blue" },
  TSRainbowViolet = { fg = "purple" },
  TSRainbowCyan = { fg = "cyan" },
  -- Trouble
  TroubleText = { fg = "white" },
  TroubleCount = { fg = "purple", bg = "grey" },
  TroubleNormal = { fg = "white", bg = "black" },
  -- Dap
  DapStoppedLine = { bg = "orange" }, -- Used for "Warning" diagnostic virtual text
  -- Lsp
  LspCodeLens = { fg = "grey" },
  LspInfoBorder = { fg = "blue", bg = "black" },
  ["@lsp.type.comment"] = { link = "@comment" },
  ["@lsp.type.enum"] = { link = "@type" },
  ["@lsp.type.enumMember"] = { link = "@constant" },
  ["@lsp.type.interface"] = { fg = "blue" },
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
  ["@lsp.typemod.type.defaultLibrary"] = { fg = "blue" },
  ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
  ["@lsp.typemod.variable.injected"] = { link = "@variable" },
  NvimTreeIndentMarker = { fg = "grey", bg = "NONE" },
}

M.change = {
  -- CMP
  CmpItemKindConstant = { bg = "orange", fg = "black" },
  CmpItemKindFunction = { bg = "blue", fg = "black" },
  CmpItemKindIdentifier = { bg = "vibrant_green", fg = "black" },
  CmpItemKindField = { bg = "vibrant_green", fg = "black" },
  CmpItemKindVariable = { bg = "purple", fg = "black" },
  CmpItemKindSnippet = { bg = "red", fg = "black" },
  CmpItemKindText = { bg = "green", fg = "black" },
  CmpItemKindStructure = { bg = "purple", fg = "black" },
  CmpItemKindType = { bg = "teal", fg = "black" },
  CmpItemKindKeyword = { bg = "white", fg = "black" },
  CmpItemKindMethod = { bg = "blue", fg = "black" },
  CmpItemKindConstructor = { bg = "blue", fg = "black" },
  CmpItemKindFolder = { bg = "white", fg = "black" },
  CmpItemKindModule = { bg = "teal", fg = "black" },
  CmpItemKindProperty = { bg = "vibrant_green", fg = "black" },
  CmpItemKindEnum = { bg = "blue", fg = "black" },
  CmpItemKindUnit = { bg = "purple", fg = "black" },
  CmpItemKindClass = { bg = "teal", fg = "black" },
  CmpItemKindFile = { bg = "white", fg = "black" },
  CmpItemKindInterface = { bg = "green", fg = "black" },
  CmpItemKindColor = { bg = "white", fg = "black" },
  CmpItemKindReference = { bg = "light_grey", fg = "black" },
  CmpItemKindEnumMember = { bg = "purple", fg = "black" },
  CmpItemKindStruct = { bg = "purple", fg = "black" },
  CmpItemKindValue = { bg = "cyan", fg = "black" },
  CmpItemKindEvent = { bg = "yellow", fg = "black" },
  CmpItemKindOperator = { bg = "light_grey", fg = "black" },
  CmpItemKindTypeParameter = { bg = "vibrant_green", fg = "black" },
  CmpItemKindCopilot = { bg = "green", fg = "black" },
  -- Modicator
  CursorLineNr = { bold = true, fg = "blue" },
  NormalMode = { fg = "blue", bg = "none" },
  InsertMode = { fg = "green", bg = "none" },
  VisualMode = { fg = "purple", bg = "none" },
  CommandMode = { fg = "yellow", bg = "none" },
  ReplaceMode = { fg = "red", bg = "none" },
  SelectMode = { fg = "orange", bg = "none" },
  TerminalMode = { fg = "cyan", bg = "none" },
  TerminalNormalMode = { fg = "teal", bg = "none" },
  MatchParen = { bg = "light_grey" },
}

return M
