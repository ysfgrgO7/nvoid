local fn = vim.fn
local icons = require("icons")
local modesE = {
  ["n"] = { "█", "St_NormalModeE" },
  ["no"] = { "█", "St_NormalModeE" },
  ["i"] = { "█", "St_InsertModeE" },
  ["ic"] = { "█", "St_InsertModeE" },
  ["t"] = { "█", "St_TerminalModeE" },
  ["nt"] = { "█", "St_NTerminalModeE" },
  ["v"] = { "█", "St_VisualModeE" },
  ["V"] = { "█", "St_VisualModeE" },
  [""] = { "█", "St_VisualModeE" },
  ["R"] = { "█", "St_ReplaceModeE" },
  ["Rv"] = { "█", "St_ReplaceModeE" },
  ["s"] = { "█", "St_SelectModeE" },
  ["S"] = { "█", "St_SelectModeE" },
  [""] = { "█", "St_SelectModeE" },
  ["c"] = { "█", "St_CommandModeE" },
  ["cv"] = { "█", "St_CommandModeE" },
  ["ce"] = { "█", "St_CommandModeE" },
  ["r"] = { "█", "St_ConfirmModeE" },
  ["rm"] = { "█", "St_ConfirmModeE" },
  ["r?"] = { "█", "St_ConfirmModeE" },
  ["!"] = { "█", "St_TerminalModeE" },
}

local M = {}

-- Mode
M.modeE = function()
  local m = vim.api.nvim_get_mode().mode
  local current_mode = "%#" .. modesE[m][2] .. "#" .. "" .. modesE[m][1] .. ""
  return current_mode
end

-- File Name
M.filename = function()
  local filename = fn.fnamemodify(fn.expand("%:t"), ":r")
  if filename == "" then
    filename = " " .. filename
  end
  return "%#St_file_info#" .. " " .. filename .. " " .. "%#St_file_sep#"
end

-- Git
M.git = function()
  if not vim.b.gitsigns_head or vim.b.gitsigns_git_status then
    return ""
  end
  local git_status = vim.b.gitsigns_status_dict
  local added = (git_status.added and git_status.added ~= 0) and ("%#St_gitAdd#" .. icons.git.added .. git_status.added)
      or ""
  local changed = (git_status.changed and git_status.changed ~= 0)
      and ("%#St_gitMod#" .. icons.git.modified .. git_status.changed)
      or ""
  local removed = (git_status.removed and git_status.removed ~= 0)
      and ("%#St_gitRem#" .. icons.git.removed .. git_status.removed)
      or ""
  local branch_name = "   " .. git_status.head .. " "
  local git_info = "%#St_gitIcons#" .. branch_name .. added .. " " .. changed .. " " .. removed
  return "%#St_gitIcons#" .. git_info
end

-- LSP STUFF
-- Status
M.lsp = function(msg)
  msg = msg or ""
  local buf_clients = vim.lsp.buf_get_clients()
  if next(buf_clients) == nil then
    if type(msg) == "boolean" or #msg == 0 then
      return ""
    end
    return msg
  end
  local buf_client_names = {}
  for _, client in pairs(buf_clients) do
    if client.name ~= "null-ls" then
      table.insert(buf_client_names, client.name)
    end
  end
  local unique_client_names = vim.fn.uniq(buf_client_names)
  return "%#St_LspStatus#" .. icons.statusline.lsp .. table.concat(unique_client_names, ", ") .. " "
end
-- Diagnostics
M.diagnostics = function()
  if not #vim.diagnostic.get(0) then
    return ""
  end
  local Errors = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
  local Warnings = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
  local Hints = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })
  local Info = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })
  local errors = (Errors and Errors > 0) and ("%#St_LspError#" .. icons.lsp.error .. Errors .. " ") or ""
  local warnings = (Warnings and Warnings > 0) and ("%#St_LspWarning#" .. icons.lsp.warn .. Warnings .. " ") or ""
  local hints = (Hints and Hints > 0) and ("%#St_LspHints#" .. icons.lsp.hint .. Hints .. " ") or ""
  local info = (Info and Info > 0) and ("%#St_LspInfo#" .. icons.lsp.info .. Info .. " ") or ""
  return errors .. warnings .. hints .. info
end
-- Progress
M.lsp_progress = function()
  local Lsp = vim.lsp.util.get_progress_messages()[1]
  if vim.o.columns < 120 or not Lsp then
    return ""
  end
  local msg = Lsp.message or ""
  local percentage = Lsp.percentage or 0
  local title = Lsp.title or ""
  local spinners = { "", "" }
  local ms = vim.loop.hrtime() / 1000000
  local frame = math.floor(ms / 120) % #spinners
  local content = string.format(" %%<%s %s %s (%s%%%%) ", spinners[frame + 1], title, msg, percentage)
  return ("%#St_LspProgress#" .. content) or ""
end

-- TreeSitter
M.treesitter_status = function()
  local ts_avail, ts = pcall(require, "nvim-treesitter.parsers")
  return (ts_avail and ts.has_parser()) and "%#St_Treesitter#" .. icons.statusline.treesitter .. " " or ""
end

-- File Type
M.filetype = function()
  local icon = ""
  local extension = fn.expand("%:e")
  local devicons_present, devicons = pcall(require, "nvim-web-devicons")
  if not devicons_present then
    return " "
  end
  local ft_icon = devicons.get_icon(extension)
  icon = (ft_icon ~= nil and " " .. ft_icon) or icon
  return "%#St_LspStatus#" .. icon .. string.format(" %s ", vim.bo.filetype):upper()
end

-- Scroll Bar
M.scrollbar = function()
  local current_line = vim.fn.line(".")
  local total_lines = vim.fn.line("$")
  local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
  local line_ratio = current_line / total_lines
  local index = math.ceil(line_ratio * #chars)
  return "%#St_pos_text#" .. chars[index]
end

return M
