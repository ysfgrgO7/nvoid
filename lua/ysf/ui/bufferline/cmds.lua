local functions = require "ysf.ui.bufferline.functions"
return {
  {
    name = "BufferNext",
    fn = function()
      functions.nextbuffer()
    end,
  },
  {
    name = "BufferPrev",
    fn = function()
      functions.prevbuffer()
    end,
  },
  {
    name = "BufferKill",
    fn = function()
      functions.closebuffer()
    end,
  },
  {
    name = "BufferKillAll",
    fn = function()
      functions.closeAllBufs()
    end,
  },
  {
    name = "BufferKillOthers",
    fn = function()
      functions.closeOtherBufs()
    end,
  },
}
