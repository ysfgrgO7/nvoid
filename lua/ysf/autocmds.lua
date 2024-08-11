nvoid.autocommands = {
  {
    "FileType",
    {
      group = "_filetype_settings",
      pattern = "lir",
      callback = function()
        vim.opt_local.number = false
        vim.opt_local.relativenumber = false
      end,
    },
  },
}
