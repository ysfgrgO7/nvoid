--## Mappings
nvoid.leader = "space"
nvoid.keys.normal_mode["<C-a>"] = "gg<S-v>G"
nvoid.keys.normal_mode["<C-b>"] = ":JABSOpen<CR>"
nvoid.keys.normal_mode["<S-x>"] = ":BufferKill<CR>"
nvoid.keys.normal_mode["<TAB>"] = ":BufferNext<CR>"
nvoid.keys.normal_mode["<S-TAB>"] = ":BufferPrev<CR>"
--## Which Key
nvoid.builtin.which_key.setup.layout.align = "center"
nvoid.builtin.which_key.mappings["s"] = {
  "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<CR>",
  nvoid.icons.ui.Search .. " Search" }
nvoid.builtin.which_key.mappings["b"] = {
  "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal'})<CR>",
  " Buffer" }
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
  r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
  f = { "<cmd>lua require('nvoid.lsp.utils').format()<cr>", "Format" },
  t = { "<cmd>TroubleToggle<cr>", "Trouble Toggle" },
  T = { "<cmd>Telescope diagnostics<CR>", "Telescope Diagnocstics" },
}
nvoid.builtin.which_key.mappings[";"] = nil
--## Plugins
nvoid.builtin.cmp.cmdline.enable = true
nvoid.plugins = reload("ysf.pluginsLists").list
--## NvimTree
nvoid.builtin.nvimtree.setup.view.side = "left"
--## Treesitter
nvoid.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
  "fish",
  "query",
  "html"
}
nvoid.builtin.treesitter.ignore_install = { "haskell" }
nvoid.builtin.treesitter.highlight.enabled = true
--## LSP
vim.diagnostic.config({
  virtual_text = false
})
nvoid.format_on_save = true
nvoid.lsp.installer.setup.ensure_installed = {
  "lua_ls",
  "bashls",
  "pyright",
}

local common_opts = { force = true }
for _, cmds in pairs(reload("ysf.cmds")) do
  local opts = vim.tbl_deep_extend("force", common_opts, cmds.opts or {})
  vim.api.nvim_create_user_command(cmds.name, cmds.fn, opts)
end
