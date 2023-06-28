local get_hex = require('cokeline/utils').get_hex

require('cokeline').setup({
  show_if_buffers_are_at_least = 2,

  buffers = {
    new_buffers_position = 'next',
  },

  rendering = {
    max_buffer_width = 30,
  },

  default_hl = {
    fg = function(buffer)
      return
          buffer.is_focused
          and get_hex('Coke', 'fg')
          or get_hex('Cokeun', 'fg')
    end,
    bg = function(buffer)
      return
          buffer.is_focused
          and get_hex('Coke', 'bg')
          or get_hex('Cokeun', 'bg')
    end,
  },
})
