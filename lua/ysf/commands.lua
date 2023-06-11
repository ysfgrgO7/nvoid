local M = {}
M.cmds = {
  {
    name = "BufferKill",
    fn = function()
      require("ysf.config.bufferline").buf_kill "bd"
    end,
  },
}

function M.load(collection)
  local common_opts = { force = true }
  for _, cmd in pairs(collection) do
    local opts = vim.tbl_deep_extend("force", common_opts, cmd.opts or {})
    vim.api.nvim_create_user_command(cmd.name, cmd.fn, opts)
  end
end
return M
