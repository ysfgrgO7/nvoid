local fn = vim.fn

local M = {}

-- Git
M.git = function()
  if not vim.b.gitsigns_head or vim.b.gitsigns_git_status then
    return " "
  end

  local git_status = vim.b.gitsigns_status_dict
  local branch_name = nvoid.icons.git.Branch .. " " .. git_status.head

  return "%#St_gitIcons#" .. " " .. branch_name .. " "
end

-- LSP STUFF
M.get_lsp = function()
  local buf_clients = vim.lsp.get_active_clients { bufnr = 0 }
  if #buf_clients == 0 then
    return "LSP Inactive"
  end

  local buf_ft = vim.bo.filetype
  local buf_client_names = {}
  local copilot_active = false

  -- add client
  for _, client in pairs(buf_clients) do
    if client.name ~= "null-ls" and client.name ~= "copilot" then
      table.insert(buf_client_names, client.name)
    end

    if client.name == "copilot" then
      copilot_active = true
    end
  end

  -- add formatter
  local formatters = require "nvoid.lsp.null-ls.formatters"
  local supported_formatters = formatters.list_registered(buf_ft)
  vim.list_extend(buf_client_names, supported_formatters)

  -- add linter
  local linters = require "nvoid.lsp.null-ls.linters"
  local supported_linters = linters.list_registered(buf_ft)
  vim.list_extend(buf_client_names, supported_linters)

  local unique_client_names = vim.fn.uniq(buf_client_names)

  local language_servers = nvoid.icons.statusline.lsp .. table.concat(unique_client_names, ", ")

  if copilot_active then
    language_servers = language_servers .. "%#SLCopilot#" .. " " .. nvoid.icons.git.Octoface .. "%*"
  end

  return "%#St_LspStatus#" .. language_servers .. " "
end

M.lsp_diagnostics = function()
  if not rawget(vim, "lsp") then
    return ""
  end

  local errors = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
  local warnings = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
  local hints = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })
  local info = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })

  errors = (errors and errors > 0) and ("%#St_lspError#" .. nvoid.icons.diagnostics.BoldError .. " " .. errors .. " ") or
      ("%#St_lspError#" .. nvoid.icons.diagnostics.BoldError .. " " .. errors .. " ")

  warnings = (warnings and warnings > 0) and
      ("%#St_lspWarning#" .. nvoid.icons.diagnostics.BoldWarning .. " " .. warnings .. " ") or
      ("%#St_lspWarning#" .. nvoid.icons.diagnostics.BoldWarning .. " " .. warnings .. " ")

  hints = (hints and hints > 0) and ("%#St_lspHints#" .. nvoid.icons.diagnostics.BoldHint .. " " .. hints .. " ") or " "

  info = (info and info > 0) and ("%#St_lspInfo#" .. nvoid.icons.diagnostics.BoldInformation .. " " .. info .. " ") or ""

  return errors .. warnings .. hints .. info
end

M.scrollbar = function()
  local current_line = vim.fn.line "."
  local total_lines = vim.fn.line "$"
  local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
  local line_ratio = current_line / total_lines
  local index = math.ceil(line_ratio * #chars)
  return "%#St_pos_text#" .. chars[index]
end

return M
