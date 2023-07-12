local api = vim.api
local fn = vim.fn
local config = require "ysf.ui.bufferline.config"
local utils = require "ysf.ui.bufferline.utils"
utils.btns()

local M = {}

M.CoverNvimTree = function()
  return "%#NvimTreeNormal#" .. (vim.g.nvimtree_side == "right" and "" or string.rep(" ", utils.getNvimTreeWidth()))
end

M.bufferlist = function()
  local buffers = {} -- buffersults
  local available_space = vim.o.columns - utils.getNvimTreeWidth() - utils.getBtnsWidth()
  local current_buf = api.nvim_get_current_buf()
  local has_current = false -- have we seen current buffer yet?

  for _, bufnr in ipairs(vim.t.bufs) do
    if utils.isBufValid(bufnr) then
      if ((#buffers + 1) * 21) > available_space then
        if has_current then
          break
        end

        table.remove(buffers, 1)
      end

      has_current = (bufnr == current_buf and true) or has_current
      table.insert(buffers, utils.styleBufferTab(bufnr))
    end
  end

  vim.g.visibuffers = buffers
  return table.concat(buffers) .. "%#TblineFill#" .. "%=" -- buffers + empty space
end

vim.g.TbTabsToggled = 0

M.tablist = function()
  local result, number_of_tabs = "", fn.tabpagenr "$"

  if number_of_tabs > 1 then
    for i = 1, number_of_tabs, 1 do
      local tab_hl = ((i == fn.tabpagenr()) and "%#TbLineTabOn# ") or "%#TbLineTabOff# "
      result = result .. ("%" .. i .. "@TbGotoTab@" .. tab_hl .. i .. " ")
      result = (
        i == fn.tabpagenr() and result .. "%#TbLineTabCloseBtn#" .. "%@TbTabClose@" .. config.icons.tab_close .. " %X"
      ) or result
    end

    local new_tabtn = "%#TblineTabNewBtn#" .. "%@TbNewTab@ " .. config.icons.tab_add .. "%X"
    local tabstoggleBtn = "%@TbToggleTabs@ %#TBTabTitle# " .. config.icons.tab .. " %X"

    return vim.g.TbTabsToggled == 1 and tabstoggleBtn:gsub("()", { [36] = config.icons.tab_toggle .. " " })
      or new_tabtn .. tabstoggleBtn .. result
  end
end

M.buttons = function()
  local CloseAllBufsBtn = "%@TbCloseAllBufs@%#TbLineCloseAllBufsBtn# " .. config.icons.close .. " %X"
  return CloseAllBufsBtn
end

return M
