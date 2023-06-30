local M = {}

M.list = {
  {
    "willothy/nvim-cokeline",
    config = function()
      reload("ysf.config.cokeline")
    end
  },
  -- Colorizer
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      reload("ysf.config.colorizer")
    end
  },
  -- TreeSitter
  {
    "nvim-treesitter/playground",
    config = function()
      reload("ysf.config.playground")
    end,
  },
  { "ChristianChiarulli/nvim-ts-rainbow" },
  { "nvim-treesitter/nvim-treesitter-textobjects" },
  {
    'simrat39/symbols-outline.nvim',
    config = function()
      reload("ysf.config.symbols-outline")
    end
  },
  -- Trouble and DAP
  {
    "folke/trouble.nvim",
    config = function()
      reload("ysf.config.trouble")
    end,
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      reload("ysf.config.dap")
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
      reload("ysf.config.surround")
    end,
  },
  -- todo Comments.nvim
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      reload("ysf.config.comments")
    end,
  },
  -- Labs
  {
    "0x100101/lab.nvim",
    build = "cd js && npm ci",
    config = function()
      reload("ysf.config.labs")
    end,
  },
  -- Zen
  {
    "folke/zen-mode.nvim",
    config = function()
      reload("ysf.config.zen")
    end,
  },
  -- Twilight
  {
    "folke/twilight.nvim",
    config = function()
      reload("ysf.config.twilight")
    end,
  },
  {
    "lvimuser/lsp-inlayhints.nvim",
    branch = "anticonceal",
    config = function()
      reload("ysf.config.inlayhints")
    end,
  },
  {
    "opalmay/vim-smoothie",
    config = function()
      reload("ysf.config.smoothie")
    end
  },
  {
    "nvim-pack/nvim-spectre",
    config = function()
      reload("ysf.config.spectre")
    end
  },
}

return M
