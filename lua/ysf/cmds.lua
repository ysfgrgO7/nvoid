local api = vim.api
local bufilter = function()
  local bufs = vim.t.bufs or nil
  if not bufs then
    return {}
  end
  for i = #bufs, 1, -1 do
    if not vim.api.nvim_buf_is_valid(bufs[i]) and vim.bo[bufs[i]].buflisted then
      table.remove(bufs, i)
    end
  end
  return bufs
end
local getBufIndex = function(bufnr)
  for i, value in ipairs(vim.t.bufs) do
    if value == bufnr then
      return i
    end
  end
end

return {
  {
    name = "BufferToggle",
    fn = function()
      if #vim.fn.getbufinfo { buflisted = 1 } >= 2 or #api.nvim_list_tabpages() >= 2 then
        vim.opt.showtabline = 2
        vim.opt.tabline = "%!v:lua.require('ysf.ui.bufferline.modules').run()"
      elseif #vim.fn.getbufinfo { buflisted = 1 } >= 0 or #api.nvim_list_tabpages() >= 1 then
        vim.opt.tabline = ""
        vim.opt.showtabline = 0
        vim.opt.tabline = ""
      end
    end,
  },
  {
    name = "BufferKill",
    fn = function()
      require("ysf.ui.bufferline").close_buffer()
      vim.cmd "BufferToggle"
    end,
  },
  {
    name = "BufferNext",
    fn = function()
      local bufs = bufilter() or {}
      local curbufIndex = getBufIndex(api.nvim_get_current_buf())
      if not curbufIndex then
        vim.cmd("b" .. vim.t.bufs[1])
        return
      end
      vim.cmd(curbufIndex == #bufs and "b" .. bufs[1] or "b" .. bufs[curbufIndex + 1])
    end,
  },
  {
    name = "BufferPrev",
    fn = function()
      local bufs = bufilter() or {}
      local curbufIndex = getBufIndex(api.nvim_get_current_buf())
      if not curbufIndex then
        vim.cmd("b" .. vim.t.bufs[1])
        return
      end
      vim.cmd(curbufIndex == 1 and "b" .. bufs[#bufs] or "b" .. bufs[curbufIndex - 1])
    end,
  },
}
