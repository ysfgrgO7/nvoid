nvoid.ui.colorscheme = "ashes"
nvoid.log.level = "warn"
nvoid.plugins = reload "ysf.plugins"
reload "ysf.ui"
reload "ysf.lsp"
reload "ysf.keymappings"
reload "ysf.plugins.builtins"
vim.o.timeout = true
vim.o.timeoutlen = 300
vim.api.nvim_command "set mousemodel=extend"
local new_cmd = vim.api.nvim_create_user_command

vim.api.nvim_create_autocmd("FileType", {
  group = "_dashboard_settings",
  pattern = "nvdash",
  command = "set laststatus=0 | autocmd BufUnload <buffer> set laststatus=" .. vim.opt.laststatus._value,
})

vim.api.nvim_create_autocmd("VimResized", {
  callback = function()
    if vim.bo.filetype == "nvdash" then
      vim.opt_local.modifiable = true
      vim.api.nvim_buf_set_lines(0, 0, -1, false, { "" })
      require("nvdash").open()
    end
  end,
})

vim.schedule(function()
  local buf_lines = vim.api.nvim_buf_get_lines(0, 0, 1, false)
  local no_buf_content = vim.api.nvim_buf_line_count(0) == 1 and buf_lines[1] == ""
  local bufname = vim.api.nvim_buf_get_name(0)

  if bufname == "" and no_buf_content then
    require("nvdash").open()
    vim.keymap.set("n", "q", "<cmd>:q<cr>", { buffer = true })
    vim.opt_local.buflisted = false
  end
end, 0)

-- Command to toggle NvDash
new_cmd("Nvdash", function()
  if vim.g.nvdash_displayed then
    return
  else
    require("nvdash").open()
  end
end, {})
