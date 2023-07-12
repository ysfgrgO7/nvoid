local M = {}
local api = vim.api
local utils = require "ysf.ui.bufferline.utils"
local always_show = require("ysf.ui.bufferline").always_show

function M.showbufferline()
  if #vim.fn.getbufinfo { buflisted = 1 } >= 2 or #api.nvim_list_tabpages() >= 2 then
    vim.opt.showtabline = 2
    vim.opt.tabline = "%!v:lua.require('ysf.ui.bufferline').run()"
  elseif #vim.fn.getbufinfo { buflisted = 1 } >= 0 or #api.nvim_list_tabpages() >= 1 then
    vim.opt.tabline = ""
    vim.opt.showtabline = 0
    vim.opt.tabline = ""
  end
end

function M.nextbuffer()
  local bufs = utils.bufilter() or {}
  local curbufIndex = utils.getBufIndex(api.nvim_get_current_buf())

  if not curbufIndex then
    vim.cmd("b" .. vim.t.bufs[1])
    return
  end

  vim.cmd(curbufIndex == #bufs and "b" .. bufs[1] or "b" .. bufs[curbufIndex + 1])
end

function M.prevbuffer()
  local bufs = utils.bufilter() or {}
  local curbufIndex = M.getBufIndex(api.nvim_get_current_buf())

  if not curbufIndex then
    vim.cmd("b" .. vim.t.bufs[1])
    return
  end

  vim.cmd(curbufIndex == 1 and "b" .. bufs[#bufs] or "b" .. bufs[curbufIndex - 1])
end

function M.closebuffer(bufnr)
  if vim.bo.buftype == "terminal" then
    vim.cmd(vim.bo.buflisted and "set nobl | enew" or "hide")
  else
    bufnr = bufnr or api.nvim_get_current_buf()
    local curBufIndex = utils.getBufIndex(bufnr)
    local bufhidden = vim.bo.bufhidden

    -- force close floating wins
    if bufhidden == "wipe" then
      vim.cmd "bw"
      return

      -- handle listed bufs
    elseif curBufIndex and #vim.t.bufs > 1 then
      local newBufIndex = curBufIndex == #vim.t.bufs and -1 or 1
      vim.cmd("b" .. vim.t.bufs[curBufIndex + newBufIndex])

    -- handle unlisted
    elseif not vim.bo.buflisted then
      vim.cmd("b" .. vim.t.bufs[1] .. " | bw" .. bufnr)
      return
    else
      vim.cmd "enew"
    end

    if not (bufhidden == "delete") then
      vim.cmd("confirm bd" .. bufnr)
    end
  end

  vim.cmd "redrawtabline"
  if always_show then
    return
  else
    M.showbufferline()
  end
end

function M.closeAllBufs(action)
  local bufs = vim.t.bufs

  if action == "closeTab" then
    vim.cmd "tabclose"
  end

  for _, buf in ipairs(bufs) do
    M.closebuffer(buf)
  end

  if action ~= "closeTab" then
    vim.cmd "enew"
  end
end

-- closes all bufs except current one
function M.closeOtherBufs()
  for _, buf in ipairs(vim.t.bufs) do
    if buf ~= api.nvim_get_current_buf() then
      vim.api.nvim_buf_delete(buf, {})
    end
  end

  vim.cmd "redrawtabline"
  if always_show then
    return
  else
    M.showbufferline()
  end
end

return M
