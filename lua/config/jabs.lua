local ui = vim.api.nvim_list_uis()[1]

require("jabs").setup({
  position = "center",
  width = 50,
  height = 10,
  border = "single",
  preview_position = "top",
  preview = {
    width = 40,
    height = 30,
    border = "single",
  },

  col = ui.width,
  row = ui.height / 2,
})
