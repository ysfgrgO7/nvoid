--- Credits to original theme https://github.com/marko-cerovac/material.nvim for existing
-- This is a modified version of it

local M = {}

M.base_30 = {
  white = "#eeffff",
  darker_black = "#191919",
  black = "#212121", --  nvim bg
  black2 = "#292929",
  one_bg = "#303030",
  one_bg2 = "#383838",
  one_bg3 = "#404040",
  grey = "#4A4A4A",
  grey_fg = "#545454",
  grey_fg2 = "#5E5E5E",
  light_grey = "#6B6B6B",
  red = "#f07178",
  baby_pink = "#FFADFF",
  pink = "#DA70CA",
  line = "#383838", -- for lines like vertsplit
  green = "#c3e88d",
  vibrant_green = "#c3e88d",
  nord_blue = "#6e98eb",
  blue = "#82aaff",
  yellow = "#ffcb6b",
  sun = "#e6b455",
  purple = "#c792ea",
  dark_purple = "#b480d6",
  teal = "#abcf76",
  orange = "#f78c6c",
  cyan = "#89ddff",
  statusline_bg = "#262626",
  lightbg = "#323232",
  pmenu_bg = "#6e98eb",
  folder_bg = "#6e98eb",
}

M.base_16 = {
  base00 = "#212121",
  base01 = M.base_30.black2,
  base02 = M.base_30.one_bg,
  base03 = M.base_30.one_bg2,
  base04 = M.base_30.one_bg3,
  base05 = "#DFF0F0",
  base06 = "#E6F7F7",
  base07 = "#eeffff",
  base08 = "#b0bec5",
  base09 = "#f78c6c",
  base0A = "#ffcb6b",
  base0B = "#c3e88d",
  base0C = "#c3e88d",
  base0D = "#82aaff",
  base0E = M.base_30.purple,
  base0F = "#f07178",
}

M.type = "dark"

return M
