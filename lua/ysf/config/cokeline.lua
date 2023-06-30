local get_hex = require('cokeline/utils').get_hex

local yellow = vim.g.terminal_color_3

local comments_fg = get_hex('Comment', 'fg')
local errors_fg = get_hex('DiagnosticError', 'fg')

local components = {
  separator = {
    text = ' ',
    bg = get_hex('Coke', 'bg'),
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

  delete_buffer = {
    text = '  ',
    fg = function(buffer)
      if buffer.is_modified then
        return buffer.is_modified and get_hex("CokeUnsaved", "fg") or nil
      else
        return buffer.is_focused and get_hex("Coke", "bg") or get_hex("CokeClose", "fg")
      end
    end,
    bg = function(buffer)
      if buffer.is_modified then
        return buffer.is_modified and get_hex("Coke", "bg") or nil
      else
        return buffer.is_focused and get_hex("CokeClose", "bg") or nil
      end
    end,
    on_click = function(_, _, _, _, buffer)
      buffer:delete()
    end,
  },
}

require('cokeline').setup({
  show_if_buffers_are_at_least = 2,

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
          or get_hex('CokeUn', 'fg')
    end,
    bg = function(buffer)
      return
          buffer.is_focused
          and get_hex('Coke', 'bg')
          or get_hex('CokeUn', 'bg')
    end,
  },

  fill_hl = 'CokeFill',

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
    components.unique_prefix,
    components.filename,
    components.space,
    components.delete_buffer,
  },
})
