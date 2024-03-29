local M = {}

M.modesC = {
  ["n"] = { "", "St_NormalModeE" },
  ["no"] = { "", "St_NormalModeE" },
  ["i"] = { "", "St_InsertModeE" },
  ["ic"] = { "", "St_InsertModeE" },
  ["t"] = { "", "St_TerminalModeE" },
  ["nt"] = { "", "St_NTerminalModeE" },
  ["v"] = { "", "St_VisualModeE" },
  ["V"] = { "", "St_VisualModeE" },
  [""] = { "", "St_VisualModeE" },
  ["R"] = { "", "St_ReplaceModeE" },
  ["Rv"] = { "", "St_ReplaceModeE" },
  ["s"] = { "", "St_SelectModeE" },
  ["S"] = { "", "St_SelectModeE" },
  [""] = { "", "St_SelectModeE" },
  ["c"] = { "", "St_CommandModeE" },
  ["cv"] = { "", "St_CommandModeE" },
  ["ce"] = { "", "St_CommandModeE" },
  ["r"] = { "", "St_ConfirmModeE" },
  ["rm"] = { "", "St_ConfirmModeE" },
  ["r?"] = { "", "St_ConfirmModeE" },
  ["!"] = { "", "St_TerminalModeE" },
}

M.modeC = function()
  local m = vim.api.nvim_get_mode().mode
  local current_mode = "%#" .. M.modesC[m][2] .. "#" .. "" .. M.modesC[m][1] .. ""
  return current_mode
end

M.treesitter = function()
  local icon = nvoid.icons.ui.Tree
  local buf = vim.api.nvim_get_current_buf()
  local ts = vim.treesitter.highlighter.active[buf]
  if ts and not vim.tbl_isempty(ts) then
    return "%#ST_TS#" .. icon .. " "
  else
    return ""
  end
end

return M
