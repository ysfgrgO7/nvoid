local get_hex = require('cokeline/utils').get_hex

local yellow = vim.g.terminal_color_3

local comments_fg = get_hex('Comment', 'fg')
local errors_fg = get_hex('DiagnosticError', 'fg')

local components = {
  separator = {
    text = ' ',
    bg = get_hex('TablineFill', 'bg'),
    truncation = { priority = 1 },
  },

  space = {
    text = ' ',
    truncation = { priority = 1 },
  },


  devicon = {
    text = function(buffer)
      return buffer.devicon.icon
    end,
    fg = function(buffer)
      return buffer.devicon.color
    end,
    truncation = { priority = 1 },
  },

  index = {
    text = function(buffer)
      return buffer.index .. ': '
      -- return buffer.index .. '. '
    end,
    fg = function(buffer)
      return
          (buffer.diagnostics.errors ~= 0 and errors_fg)
          or nil
    end,
    truncation = { priority = 1 },
  },

  unique_prefix = {
    text = function(buffer)
      return buffer.unique_prefix
    end,
    fg = comments_fg,
    style = 'italic',
    truncation = {
      priority = 3,
      direction = 'left',
    },
  },

  filename = {
    text = function(buffer)
      return buffer.filename
    end,
    fg = function(buffer)
      return
          (buffer.diagnostics.errors ~= 0 and errors_fg)
          or nil
    end,
    style = function(buffer)
      return
          ((buffer.is_focused and buffer.diagnostics.errors ~= 0)
            and 'bold,underline')
          or (buffer.is_focused and 'bold')
          or (buffer.diagnostics.errors ~= 0 and 'underline')
          or nil
    end,
    truncation = {
      priority = 2,
      direction = 'left',
    },
  },

  close_or_unsaved = {
    text = function(buffer)
      -- return buffer.is_modified and '●' or ''
      return buffer.is_modified and '' or ''
    end,
    fg = function(buffer)
      return buffer.is_modified and '#00bb00' or nil
    end,
    delete_buffer_on_left_click = false,
    truncation = { priority = 1 },
  },
}

require('cokeline').setup({
  show_if_buffers_are_at_least = 1,

  buffers = {
    filter_valid = function(buffer) return buffer.type ~= 'terminal' end,
    filter_visible = function(buffer) return buffer.type ~= 'terminal' end,
    focus_on_delete = 'prev',
    new_buffers_position = 'next',
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

  sidebar = {
    filetype = 'NvimTree',
    components = {
      {
        text = "",
        fg = yellow,
        bg = get_hex('NvimTreeNormal', 'bg'),
        style = 'bold',
      },
    }
  },

  components = {
    components.space,
    components.devicon,
    components.index,
    components.unique_prefix,
    components.filename,
    components.close_or_unsaved,
    components.space,
  },
})
