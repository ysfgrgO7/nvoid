local M = {}
M.add = {
  Coke = { bg = "black", fg = "white" },
  Cokeun = { bg = "darker_black", fg = "grey" },
  BufferVisible = { fg = 'fg', bg = 'darker_black' },
  BufferVisibleIndex = { fg = 'blue', bg = 'darker_black' },
  BufferVisibleMod = { fg = 'yellow', bg = 'darker_black' },
  BufferVisibleSign = { fg = 'blue', bg = 'darker_black' },
  BufferVisibleTarget = { fg = 'red', bg = 'darker_black', bold = true, },
  BufferInactive = { fg = 'grey_fg2', bg = 'darker_black' },
  BufferInactiveIndex = { fg = 'grey_fg2', bg = 'darker_black' },
  BufferInactiveMod = { fg = '#a58354', bg = 'darker_black' },
  BufferInactiveSign = { fg = 'blue', bg = 'darker_black' },
  BufferInactiveTarget = { fg = 'red', bg = 'darker_black', bold = true, },
  BufferTabpage = { fg = 'blue', bg = 'darker_black' },
  BufferTabpages = { fg = 'NONE', bg = 'darker_black' },

  TabLine = { fg = 'one_bg2', bg = 'darker_black' },
  TabLineSel = { fg = 'black', bg = 'blue' },
  TabLineFill = { fg = 'black', bg = 'black' },
}
return M
