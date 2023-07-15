local M = {}

local m = reload "nvoid.ui.statusline.modules"

local git = function()
  if not vim.b.gitsigns_head or vim.b.gitsigns_git_status then
    return " "
  end

  local git_status = vim.b.gitsigns_status_dict
  local branch_name = nvoid.icons.git.Branch .. " " .. git_status.head

  return "%#St_gitIcons#" .. " " .. branch_name .. " "
end

M.run = function()
  return table.concat {
    git(),
    m.lsp_diagnostics(),

    "%=",
    "%=",

    m.get_lsp(),
    m.scrollbar(),
  }
end

return M
