return {
  {
    name = "BufferKill",
    fn = function()
      vim.cmd("bd")
    end,
  },
  {
    name = "BufferNext",
    fn = function()
      vim.cmd("bn")
    end
  },
  {
    name = "BufferPrev",
    fn = function()
      vim.cmd("bp")
    end
  },
}
