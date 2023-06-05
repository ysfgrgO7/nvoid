nvoid.plugins = {
  -- TreeSitter
  {
    "nvim-treesitter/playground",
    config = function()
      require("config.playground")
    end,
  },
  { "ChristianChiarulli/nvim-ts-rainbow" },
  { "nvim-treesitter/nvim-treesitter-textobjects" },
  -- Trouble and DAP
  {
    "folke/trouble.nvim",
    config = function()
      require("config.trouble")
    end,
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      require("config.dap")
    end,
  },
  {
    "Pocco81/dap-buddy.nvim",
    branch = "dev",
  },
  {
    "matbme/JABS.nvim",
    config = function()
      require("config.jabs")
    end,
  },
  -- neoscroll
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("config.neoscroll")
    end,
  },
  -- Surround
  {
    "kylechui/nvim-surround",
    config = function()
      require("config.surround")
    end,
  },
  -- todo Comments.nvim
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("config.comments")
    end,
  },
  -- Labs
  {
    "0x100101/lab.nvim",
    build = "cd js && npm ci",
    config = function()
      require("config.labs")
    end,
  },
  -- Zen
  {
    "folke/zen-mode.nvim",
    config = function()
      require("config.zen")
    end,
  },
  -- Twilight
  {
    "folke/twilight.nvim",
    config = function()
      require("config.twilight")
    end,
  },
  {
    "akinsho/bufferline.nvim",
    config = function()
      require("config.bufferline")
    end,
    branch = "main",
    event = "User FileOpened",
  },
}
