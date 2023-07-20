nvoid.builtin.which_key.setup.layout.align = "center"
nvoid.builtin.which_key.mappings[";"] = nil

--## Telescope
nvoid.builtin.which_key.mappings["s"] = {
  "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<CR>",
  nvoid.icons.ui.Search .. " Search",
}

nvoid.builtin.which_key.mappings["b"] = {
  "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal'})<CR>",
  " Buffer",
}

nvoid.builtin.which_key.mappings["f"] = {
  name = " Find",
  b = {
    "<cmd>lua require 'telescope'.extensions.file_browser.file_browser(require('telescope.themes').get_ivy{previewer = true})<cr>",
    "File Browser",
  },
  c = { "<cmd>Telescope themes<cr>", "Change Colors" },
  f = { "<cmd>Telescope find_files<cr>", "Find files" },
  h = { "<cmd>Telescope oldfiles<cr>", "Old Files" },
  H = { "<cmd>Telescope help_tags<cr>", "CMD Help" },
  p = { "<cmd>Telescope projects<cr>", "Projects" },
  k = { "<cmd>Telescope keymaps<cr>", "Key maps" },
  m = { "<cmd>Telescope media_files<cr>", "Media Files" },
  o = { "<cmd>Telescope vim_options<cr>", "Options" },
  t = { "<cmd>Telescope filetypes<cr>", "File Types" },
  w = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Find Word In Document" },
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
