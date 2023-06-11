nvoid.builtin.cmp.cmdline.enable = true
nvoid.plugins = {
  -- Colorizer
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("ysf.config.colorizer")
    end
  },
  -- TreeSitter
  {
    "nvim-treesitter/playground",
    config = function()
      require("ysf.config.playground")
    end,
  },
  { "ChristianChiarulli/nvim-ts-rainbow" },
  { "nvim-treesitter/nvim-treesitter-textobjects" },
  {
    'simrat39/symbols-outline.nvim',
    config = function()
      require("ysf.config.symbols-outline")
    end
  },
  -- Trouble and DAP
  {
    "folke/trouble.nvim",
    config = function()
      require("ysf.config.trouble")
    end,
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      require("ysf.config.dap")
    end,
  },
  {
    "Pocco81/dap-buddy.nvim",
    branch = "dev",
  },
  {
    "matbme/JABS.nvim",
    config = function()
      require("ysf.config.jabs")
    end,
  },
  -- neoscroll
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("ysf.config.neoscroll")
    end,
  },
  -- Surround
  {
    "kylechui/nvim-surround",
    config = function()
      require("ysf.config.surround")
    end,
  },
  -- todo Comments.nvim
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("ysf.config.comments")
    end,
  },
  -- Labs
  {
    "0x100101/lab.nvim",
    build = "cd js && npm ci",
    config = function()
      require("ysf.config.labs")
    end,
  },
  -- Zen
  {
    "folke/zen-mode.nvim",
    config = function()
      require("ysf.config.zen")
    end,
  },
  -- Twilight
  {
    "folke/twilight.nvim",
    config = function()
      require("ysf.config.twilight")
    end,
  },
  {
    "akinsho/bufferline.nvim",
    config = function()
      require("ysf.config.bufferline").setup()
    end,
    branch = "main",
    event = "User FileOpened",
  },
}
