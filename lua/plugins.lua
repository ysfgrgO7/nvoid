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
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("config.surround")
    end,
  },
  -- todo Comments.nvim
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("config.comments")
    end,
  },
  -- Labs
  {
    "0x100101/lab.nvim",
    run = "cd js && npm ci",
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
    "ghillb/cybu.nvim",
    branch = "main",
    requires = { "kyazdani42/nvim-web-devicons", "nvim-lua/plenary.nvim" },
    config = function()
      require("config.cybu")
    end,

  }
}
