local M = {}

M.list = {
  {
    "willothy/nvim-cokeline",
    config = function()
      reload("ysf.plugins.config.cokeline")
    end
  },
  -- Colorizer
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      reload("ysf.plugins.config.colorizer")
    end
  },
  -- TreeSitter
  {
    "nvim-treesitter/playground",
    config = function()
      reload("ysf.plugins.config.playground")
    end,
  },
  { "ChristianChiarulli/nvim-ts-rainbow" },
  { "nvim-treesitter/nvim-treesitter-textobjects" },
  {
    'simrat39/symbols-outline.nvim',
    config = function()
      reload("ysf.plugins.config.symbols-outline")
    end
  },
  -- Trouble and DAP
  {
    "folke/trouble.nvim",
    config = function()
      reload("ysf.plugins.config.trouble")
    end,
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      reload("ysf.plugins.config.dap")
    end,
  },
  {
    "Pocco81/dap-buddy.nvim",
    branch = "dev",
  },
  -- Surround
  {
    "kylechui/nvim-surround",
    config = function()
      reload("ysf.plugins.config.surround")
    end,
  },
  -- todo Comments.nvim
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      reload("ysf.plugins.config.comments")
    end,
  },
  -- Labs
  {
    "0x100101/lab.nvim",
    build = "cd js && npm ci",
    config = function()
      reload("ysf.plugins.config.labs")
    end,
  },
  -- Zen
  {
    "folke/zen-mode.nvim",
    config = function()
      reload("ysf.plugins.config.zen")
    end,
  },
  -- Twilight
  {
    "folke/twilight.nvim",
    config = function()
      reload("ysf.plugins.config.twilight")
    end,
  },
  {
    "lvimuser/lsp-inlayhints.nvim",
    branch = "anticonceal",
    config = function()
      reload("ysf.plugins.config.inlayhints")
    end,
  },
  {
    "opalmay/vim-smoothie",
    config = function()
      reload("ysf.plugins.config.smoothie")
    end
  },
  {
    "nvim-pack/nvim-spectre",
    config = function()
      reload("ysf.plugins.config.spectre")
    end
  },
  {
    "mawkler/modicator.nvim",
    event = "ColorScheme",
    dependencies = 'nvoid-lua/base16',
    config = function()
      reload("ysf.plugins.config.modicator")
    end
  },
}

return M
