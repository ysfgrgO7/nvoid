local M = {}
M.add = {
  Coke = { bg = "black", fg = "white" },
  Cokeun = { bg = "darker_black", fg = "grey" },
  CokeUnsaved = { fg = 'green' },
  BufferLineIndicatorSelected = { fg = 'blue' },
  BufferCurrent = { bg = 'black', fg = 'white' },
  BufferCurrentERROR = { bg = 'black', fg = 'red' },
  BufferCurrentHINT = { bg = 'black', fg = 'teal' },
  BufferCurrentINFO = { bg = 'black', fg = 'blue' },
  BufferCurrentWARN = { bg = 'black', fg = 'orange' },
  BufferCurrentIndex = { bg = 'black', fg = 'blue' },
  BufferCurrentMod = { bg = 'black', fg = 'orange' },
  BufferCurrentSign = { bg = 'black', fg = 'black' },
  BufferCurrentTarget = { bg = 'black', fg = 'red' },
  BufferAlternate = { bg = 'white', fg = 'white' },
  BufferAlternateERROR = { bg = 'white', fg = 'red' },
  BufferAlternateHINT = { bg = 'white', fg = 'teal' },
  BufferAlternateIndex = { bg = 'white', fg = 'blue' },
  BufferAlternateINFO = { bg = 'white', fg = 'blue' },
  BufferAlternateMod = { bg = 'white', fg = 'orange' },
  BufferAlternateSign = { bg = 'white', fg = 'blue' },
  BufferAlternateTarget = { bg = 'white', fg = 'red' },
  BufferAlternateWARN = { bg = 'white', fg = 'orange' },
  BufferVisible = { bg = 'darker_black', fg = 'white' },
  BufferVisibleERROR = { bg = 'darker_black', fg = 'red' },
  BufferVisibleHINT = { bg = 'darker_black', fg = 'teal' },
  BufferVisibleINFO = { bg = 'darker_black', fg = 'blue' },
  BufferVisibleWARN = { bg = 'darker_black', fg = 'orange' },
  BufferVisibleIndex = { bg = 'darker_black', fg = 'blue' },
  BufferVisibleMod = { bg = 'darker_black', fg = 'orange' },
  BufferVisibleSign = { bg = 'darker_black', fg = 'blue' },
  BufferVisibleTarget = { bg = 'darker_black', fg = 'red' },
  BufferInactive = { bg = 'one_bg', fg = 'grey' },
  BufferInactiveERROR = { bg = 'one_bg', fg = 'red', },
  BufferInactiveHINT = { bg = 'one_bg', fg = 'teal' },
  BufferInactiveINFO = { bg = 'one_bg', fg = 'blue', },
  BufferInactiveWARN = { bg = 'one_bg', fg = 'orange', },
  BufferInactiveIndex = { bg = 'one_bg', fg = 'grey' },
  BufferInactiveMod = { bg = 'one_bg', fg = 'orange', },
  BufferInactiveSign = { bg = 'one_bg', fg = 'black' },
  BufferInactiveTarget = { bg = 'one_bg', fg = 'red' },
  BufferOffset = { bg = 'darker_black', fg = 'grey' },
  BufferTabpageFill = { bg = 'one_bg', fg = 'grey' },
  BufferTabpages = { bg = 'darker_black', fg = 'none' },
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
  TroubleText = { fg = 'white' },
  TroubleCount = { fg = 'purple', bg = 'grey' },
  TroubleNormal = { fg = 'white', bg = 'black' },
  DiffAdd = { bg = 'green' },   -- diff mode: Added line |diff.txt|
  DiffChange = { bg = 'blue' }, -- diff mode: Changed line |diff.txt|
  DiffDelete = { bg = 'red' },  -- diff mode: Deleted line |diff.txt|
  DiffText = { bg = 'grey' },   -- diff mode: Changed text within a changed line |diff.txt|
  LspCodeLens = { fg = 'grey' },
  LspInfoBorder = { fg = 'blue', bg = 'black' },
  DiagnosticInfo = { fg = 'blue' },                              -- Used as the base highlight group. Other Diagnostic highlights link to this by default
  DiagnosticUnnecessary = { fg = 'black' },                      -- Used as the base highlight group. Other Diagnostic highlights link to this by default
  DiagnosticVirtualTextError = { bg = 'red', fg = 'red' },       -- Used for "Error" diagnostic virtual text
  DiagnosticVirtualTextWarn = { bg = 'orange', fg = 'orange' },  -- Used for "Warning" diagnostic virtual text
  DiagnosticVirtualTextInfo = { bg = 'blue', fg = 'blue' },      -- Used for "Information" diagnostic virtual text
  DiagnosticVirtualTextHint = { bg = 'blue', fg = 'blue' },      -- Used for "Hint" diagnostic virtual text
  DiagnosticUnderlineError = { undercurl = true, sp = 'red' },   -- Used to underline "Error" diagnostics
  DiagnosticUnderlineWarn = { undercurl = true, sp = 'orange' }, -- Used to underline "Warning" diagnostics
  DiagnosticUnderlineInfo = { undercurl = true, sp = 'blue' },   -- Used to underline "Information" diagnostics
  DiagnosticUnderlineHint = { undercurl = true, sp = 'blue' },   -- Used to underline "Hint" diagnostics
  DapStoppedLine = { bg = 'orange' },                            -- Used for "Warning" diagnostic virtual text
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
  diffAdded = { fg = 'green' },
  diffRemoved = { fg = 'red' },
  diffChanged = { fg = 'blue' },
  diffOldFile = { fg = 'yellow' },
  diffNewFile = { fg = 'orange' },
  diffFile = { fg = 'blue' },
  diffLine = { fg = 'grey' },
  diffIndexLine = { fg = 'purple' },
  TabLine = { bg = 'darker_black', fg = 'grey' },    -- tab pages line, not active tab page label
  TabLineFill = { bg = 'darker_black' },             -- tab pages line, where there are no labels
  TabLineSel = { fg = 'darker_black', bg = 'blue' }, -- tab pages line, active tab page label
  MiniTablineCurrent = { fg = 'white', bg = 'white' },
  MiniTablineFill = { bg = 'darker_black' },
  MiniTablineHidden = { fg = 'grey', bg = 'black' },
  MiniTablineModifiedCurrent = { fg = 'orange', bg = 'white' },
  MiniTablineModifiedHidden = { bg = 'black', fg = 'orange', },
  MiniTablineModifiedVisible = { fg = 'orange', bg = 'black' },
  MiniTablineTabpagesection = { bg = 'black', fg = 'none' },
  MiniTablineVisible = { fg = 'white', bg = 'black' },
  EndOfBuffer = { fg = "black" },               -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
  StatusLineNC = { fg = 'grey', bg = 'black' }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
  NormalNC = { fg = 'white', bg = 'black' },    -- normal text in non-current windows
}
return M
