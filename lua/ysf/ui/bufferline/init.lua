local M = {}
local config = require("ysf.ui.bufferline.config")

function M.define_autocmds(definitions)
  for _, entry in ipairs(definitions) do
    local event = entry[1]
    local opts = entry[2]
    if type(opts.group) == "string" and opts.group ~= "" then
      local exists, _ = pcall(vim.api.nvim_get_autocmds, { group = opts.group })
      if not exists then
        vim.api.nvim_create_augroup(opts.group, {})
      end
    end
    vim.api.nvim_create_autocmd(event, opts)
  end
end

function M.show()
  if config.always_show then
    vim.opt.showtabline = 2
    vim.opt.tabline = "%!v:lua.require('ysf.ui.bufferline').run()"
  else
    vim.api.nvim_create_autocmd(
      { "BufAdd", "BufDelete", "BufEnter", "BufUnload", "BufLeave", "BufNew", "BufNewFile", "TermOpen", "tabnew" },
      {
        pattern = "*",
        group = vim.api.nvim_create_augroup("TabuflineLazyLoad", {}),
        callback = function()
          require("ysf.ui.bufferline.functions").showbufferline()
        end,
      }
    )
  end
end

function M.get_cmds()
  local common_opts = { force = true }
  for _, cmds in pairs(require "ysf.ui.bufferline.cmds") do
    local opts = vim.tbl_deep_extend("force", common_opts, cmds.opts or {})
    vim.api.nvim_create_user_command(cmds.name, cmds.fn, opts)
  end
end

M.run = function()
  local modules = require "ysf.ui.bufferline.modules"
  local result = modules.bufferlist() .. (modules.tablist() or "") .. modules.buttons()
  return (vim.g.nvimtree_side == "left") and modules.CoverNvimTree() .. result or modules.CoverNvimTree() .. result
end

function M.setup()
  M.define_autocmds(require "ysf.ui.bufferline.autocmd")
  M.show()
  M.get_cmds()
end

return M
