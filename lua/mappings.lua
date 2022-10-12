nvoid.leader = "space"
nvoid.keys.normal_mode["<C-a>"] = "gg<S-v>G"
nvoid.keys.normal_mode["<C-b>"] = ":JABSOpen<CR>"
vim.keymap.set("n", "J", "<plug>(CybuLastusedNext)")
nvoid.builtin.which_key.mappings["h"] = { "<cmd>nohlsearch<CR>", " No Highlight" }
nvoid.builtin.which_key.mappings["z"] = {
  name = " Zen",
  z = { "<cmd>ZenMode<cr>", "ZenMode" },
  t = { "<cmd>Twilight<cr>", "Twilight" },
}
nvoid.builtin.which_key.mappings["c"] = {
  name = " Config",
  p = { "<cmd>e ~/.config/nvim/lua/nvoid/plugins/init.lua<cr>", "Packer" },
  c = { "<cmd>e ~/.config/nvim/lua/nvoid/core/init.lua<cr>", "Core" },
  t = { "<cmd>e ~/.config/nvim/lua/nvoid/ui/init.lua<cr>", "UI" },
}
nvoid.builtin.which_key.mappings["l"] = {
  name = "力lsp",
  d = { "<cmd>NvoidDiagnostics<cr>", "Diagnostics" },
  i = { "<cmd>LspInfo<cr>", "Info" },
  l = { "<cmd>MasonLog<cr>", "Mason Log" },
  m = { "<cmd>Mason<cr>", "Mason" },
  r = { "<cmd>NvoidRename<cr>", "Rename" },
  f = { "<cmd>NvoidFormat<cr>", "Format" },
  t = { "<cmd>TroubleToggle<cr>", "Trouble Toggle" },
  T = { "<cmd>Telescope diagnostics<CR>", "Telescope Diagnocstics" },
}
