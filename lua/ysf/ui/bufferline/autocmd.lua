vim.t.bufs = vim.api.nvim_list_bufs()
local listed_bufs = {}
for _, val in ipairs(vim.t.bufs) do
  if vim.bo[val].buflisted then
    table.insert(listed_bufs, val)
  end
end
vim.t.bufs = listed_bufs

return {
  {
    { "BufAdd", "BufEnter", "tabnew" },
    {
      callback = function(args)
        local bufs = vim.t.bufs
        if vim.t.bufs == nil then
          vim.t.bufs = vim.api.nvim_get_current_buf() == args.buf and {} or { args.buf }
        else
          if
            not vim.tbl_contains(bufs, args.buf)
            and (args.event == "BufEnter" or vim.bo[args.buf].buflisted or args.buf ~= vim.api.nvim_get_current_buf())
            and vim.api.nvim_buf_is_valid(args.buf)
            and vim.bo[args.buf].buflisted
          then
            table.insert(bufs, args.buf)
            for index, bufnr in ipairs(bufs) do
              if
                #vim.api.nvim_buf_get_name(bufnr) == 0
                and (vim.api.nvim_get_current_buf() ~= bufnr or bufs[index + 1])
                and not vim.api.nvim_buf_get_option(bufnr, "modified")
              then
                table.remove(bufs, index)
              end
            end

            vim.t.bufs = bufs
          end
        end
      end,
    },
  },
  {
    "BufDelete",
    {
      callback = function(args)
        for _, tab in ipairs(vim.api.nvim_list_tabpages()) do
          local bufs = vim.t[tab].bufs
          if bufs then
            for i, bufnr in ipairs(bufs) do
              if bufnr == args.buf then
                table.remove(bufs, i)
                vim.t[tab].bufs = bufs
                break
              end
            end
          end
        end
      end,
    },
  },
}
