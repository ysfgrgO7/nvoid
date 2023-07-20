nvoid.builtin.which_key.setup.layout.align = "center"
nvoid.builtin.which_key.mappings[";"] = nil

nvoid.builtin.which_key.mappings["s"] = {
  "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<CR>",
  nvoid.icons.ui.Search .. " Search",
}
nvoid.builtin.which_key.mappings["b"] = {
  "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal'})<CR>",
  " Buffer",
}
nvoid.builtin.which_key.mappings["h"] = { "<cmd>nohlsearch<CR>", " No Highlight" }
nvoid.builtin.which_key.mappings["z"] = {
  name = " Zen",
  z = { "<cmd>ZenMode<cr>", "ZenMode" },
  t = { "<cmd>Twilight<cr>", "Twilight" },
}

nvoid.builtin.which_key.mappings["l"] = {
  name = "力lsp",
  d = { "<cmd>NvoidDiagnostics<cr>", "Diagnostics" },
  i = { "<cmd>LspInfo<cr>", "Info" },
  l = { "<cmd>MasonLog<cr>", "Mason Log" },
  m = { "<cmd>Mason<cr>", "Mason" },
  r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
  f = { "<cmd>lua require('nvoid.lsp.utils').format()<cr>", "Format" },
  t = { "<cmd>TroubleToggle<cr>", "Trouble Toggle" },
  T = { "<cmd>Telescope diagnostics<CR>", "Telescope Diagnocstics" },
}

-- Spectre
nvoid.builtin.which_key.mappings["S"] = {
  name = nvoid.icons.ui.Search .. " Spectre",
  o = { "<cmd>lua require('spectre').open()<CR>", "Open" },
  w = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Search current word" },
  p = { "<cmd>lua require('spectre').open_file_search({select_word=true})<CR>", "Search on current file" },
}
nvoid.builtin.which_key.vmappings["Sw"] =
  { "<esc><cmd>lua require('spectre').open_visual()<CR>", "Search current word" }
