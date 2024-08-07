local M = {}

M.diff = function()
  if not vim.b.gitsigns_head or vim.b.gitsigns_git_status then
    return ""
  end

  local git_status = vim.b.gitsigns_status_dict
  local added = (git_status.added and git_status.added ~= 0) and (nvoid.icons.git.LineAdded .. " " .. git_status.added)
    or (nvoid.icons.git.LineAdded .. " 0")
  local changed = (git_status.changed and git_status.changed ~= 0)
      and (nvoid.icons.git.LineModified .. " " .. git_status.changed)
    or (nvoid.icons.git.LineAdded .. " 0")
  local removed = (git_status.removed and git_status.removed ~= 0)
      and (nvoid.icons.git.LineRemoved .. " " .. git_status.removed)
    or (nvoid.icons.git.LineAdded .. " 0")

  return "%#St_ModeM#" .. "%#St_ModeM#" .. added .. " " .. "%#St_ModeM#" .. changed .. " " .. "%#St_ModeM#" .. removed
end

M.diagnostics = function()
  if not rawget(vim, "lsp") then
    return ""
  end

  local errors = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
  local warnings = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
  local hints = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })
  local info = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })

  errors = (errors and errors > 0) and ("%#St_ModeM#" .. nvoid.icons.diagnostics.BoldError .. " " .. errors .. " ")
    or ("%#St_ModeM#" .. nvoid.icons.diagnostics.BoldError .. " 0 ")
  warnings = (warnings and warnings > 0)
      and ("%#St_ModeM#" .. nvoid.icons.diagnostics.BoldWarning .. " " .. warnings .. " ")
    or ("%#St_ModeM#" .. nvoid.icons.diagnostics.BoldWarning .. " 0 ")
  hints = (hints and hints > 0) and ("%#St_ModeM#" .. nvoid.icons.diagnostics.BoldHint .. " " .. hints .. " ") or ""
  info = (info and info > 0) and ("%#St_ModeM#" .. nvoid.icons.diagnostics.BoldInformation .. " " .. info .. " ") or ""

  return errors .. warnings .. hints .. info
end

M.treesitter = function()
  local icon = nvoid.icons.ui.Tree
  local buf = vim.api.nvim_get_current_buf()
  local ts = vim.treesitter.highlighter.active[buf]
  if ts and not vim.tbl_isempty(ts) then
    return "%#St_ModeM#" .. icon .. " "
  else
    return ""
  end
end

return M
