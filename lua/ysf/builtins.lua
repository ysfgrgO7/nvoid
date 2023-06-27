--## Mappings
nvoid.leader = "space"
nvoid.keys.normal_mode["<C-a>"] = "gg<S-v>G"
nvoid.keys.normal_mode["<C-b>"] = ":JABSOpen<CR>"
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

--## AutoCommands
vim.api.nvim_create_autocmd({ "FileType" }, {
  -- ls
  pattern = {
    "qf",
    "help",
    "man",
    "lspinfo",
    "spectre_panel",
    "lir",
    "DressingSelect",
    "tsplayground",
    "",
  },
  callback = function()
    vim.cmd [[
      nnoremap <silent> <buffer> q :close<CR>
      " nnoremap <silent> <buffer> <esc> :close<CR>
      set nobuflisted
    ]]
  end,
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter", "BufEnter" }, {
  pattern = { "*" },
  callback = function()
    local buf_ft = vim.bo.filetype
    if buf_ft == "" or buf_ft == nil then
      vim.cmd [[
      nnoremap <silent> <buffer> q :close<CR>
      " nnoremap <silent> <buffer> <c-j> j<CR>
      " nnoremap <silent> <buffer> <c-k> k<CR>
      set nobuflisted
    ]]
    end
  end,
})

vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "" },
  callback = function()
    local get_project_dir = function()
      local cwd = vim.fn.getcwd()
      local project_dir = vim.split(cwd, "/")
      local project_name = project_dir[#project_dir]
      return project_name
    end
    vim.opt.titlestring = get_project_dir()
  end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "gitcommit", "markdown" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})

vim.api.nvim_create_autocmd({ "VimResized" }, {
  callback = function()
    vim.cmd "tabdo wincmd ="
  end,
})

vim.api.nvim_create_autocmd({ "CmdWinEnter" }, {
  callback = function()
    vim.cmd "quit"
  end,
})

vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  callback = function()
    vim.cmd "set formatoptions-=cro"
  end,
})

vim.api.nvim_create_autocmd({ "VimEnter" }, {
  callback = function()
    vim.cmd "hi link illuminatedWord LspReferenceText"
  end,
})

vim.cmd [[
  augroup terminal_setup | au!
  autocmd TermOpen * nnoremap <buffer><LeftRelease> <LeftRelease>i
  autocmd TermEnter * startinsert!
  augroup end
]]

vim.api.nvim_create_autocmd({ "TermEnter" }, {
  pattern = { "*" },
  callback = function()
    vim.cmd "startinsert"
  end,
})

vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  pattern = { "*" },
  callback = function()
    vim.cmd "checktime"
  end,
})

vim.api.nvim_create_autocmd({ "CursorHold" }, {
  callback = function()
    local status_ok, luasnip = pcall(require, "luasnip")
    if not status_ok then
      return
    end
    if luasnip.expand_or_jumpable() then
      vim.cmd [[silent! lua require("luasnip").unlink_current()]]
    end
  end,
})
