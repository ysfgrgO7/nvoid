nvoid.builtin.alpha.dashboard.section.footer.val = "󰖟 nvoid.org"
nvoid.builtin.alpha.dashboard.section.buttons.entries = {
  { "f", nvoid.icons.ui.FindFile .. "  Find File", "<CMD>Telescope find_files<CR>" },
  { "n", nvoid.icons.ui.NewFile .. "  New File", "<CMD>ene!<CR>" },
  { "o", nvoid.icons.ui.History .. "  Recent files", ":Telescope oldfiles <CR>" },
  {
    "e",
    nvoid.icons.ui.Gear .. "  Configuration",
    "<CMD>edit " .. require("nvoid.config"):get_user_config_path() .. " <CR>",
  },
  { "t", nvoid.icons.ui.FindText .. "  Find Text", "<CMD>Telescope live_grep<CR>" },
  { "u", nvoid.icons.ui.ArrowCircleUp .. "  Update Nvoid", "<CMD>NvoidUpdate<CR>" },
  { "q", nvoid.icons.ui.Close .. "  Quit", "<CMD>:qa<CR>" },
}
