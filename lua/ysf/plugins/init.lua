local M = {}

M.list = {
  -- {
  --   "willothy/nvim-cokeline",
  --   config = function()
  --     reload "ysf.plugins.config.cokeline"
  --   end,
  -- },
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      reload "ysf.plugins.config.colorizer"
    end,
  },
  {
    "nvim-treesitter/playground",
    config = function()
      reload "ysf.plugins.config.playground"
    end,
  },
  { "ChristianChiarulli/nvim-ts-rainbow" },
  { "nvim-treesitter/nvim-treesitter-textobjects" },
  {
    "simrat39/symbols-outline.nvim",
    config = function()
      reload "ysf.plugins.config.symbols-outline"
    end,
  },
  {
    "folke/trouble.nvim",
    config = function()
      reload "ysf.plugins.config.trouble"
    end,
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      reload "ysf.plugins.config.dap"
    end,
  },
  {
    "Pocco81/dap-buddy.nvim",
    branch = "dev",
  },
  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    },
    config = function()
      reload "ysf.plugins.config.mason-null-ls"
    end,
  },
  {
    "kylechui/nvim-surround",
    config = function()
      reload "ysf.plugins.config.surround"
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      reload "ysf.plugins.config.comments"
    end,
  },
  {
    "folke/zen-mode.nvim",
    config = function()
      reload "ysf.plugins.config.zen"
    end,
  },
  {
    "folke/twilight.nvim",
    config = function()
      reload "ysf.plugins.config.twilight"
    end,
  },
  {
    "lvimuser/lsp-inlayhints.nvim",
    branch = "anticonceal",
    config = function()
      reload "ysf.plugins.config.inlayhints"
    end,
  },
  {
    "opalmay/vim-smoothie",
    config = function()
      reload "ysf.plugins.config.smoothie"
    end,
  },
  {
    "nvim-pack/nvim-spectre",
    config = function()
      reload "ysf.plugins.config.spectre"
    end,
  },
  {
    "mawkler/modicator.nvim",
    dependencies = "nvoid-lua/base16",
    config = function()
      reload "ysf.plugins.config.modicator"
    end,
  },
  {
    "monkoose/matchparen.nvim",
    config = function()
      vim.g.loaded_matchparen = 1
      reload("matchparen").setup {
        on_startup = true,
        hl_group = "MatchParen",
        augroup_name = "matchparen",
        debounce_time = 100,
      }
    end,
  },
  {
    "ellisonleao/glow.nvim",
    config = true,
    cmd = "Glow",
  },
  {
    "j-hui/fidget.nvim",
    branch = "legacy",
    config = function()
      require("fidget").setup()
    end,
  },
}

return M
