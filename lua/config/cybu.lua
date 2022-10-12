local ok, cybu = pcall(require, "cybu")
if not ok then
  return
end
cybu.setup({
  position = {
    relative_to = "win",
    anchor = "topcenter",
    vertical_offset = 10,
    horizontal_offset = 0,
    max_win_height = 5,
    max_win_width = 0.5,
  },
  style = {
    path = "relative",
    path_abbreviation = "none",
    border = "single",
    separator = " ",
    prefix = "…",
    padding = 1,
    hide_buffer_id = true,
    devicons = {
      enabled = true,
      colored = true,
      truncate = true,
    },
  },
  behavior = {
    mode = {
      default = {
        switch = "immediate",
        view = "rolling",
      },
      last_used = {
        switch = "on_close",
        view = "paging",
      },
    },
  },
  display_time = 750,
  exclude = {
    "neo-tree",
    "fugitive",
    "qf",
  },
  fallback = function() end,
})
