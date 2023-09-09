-- credit to original theme for existing https://github.com/ayu-theme/ayu-vim (light)
-- NOTE : This is a modified version of it

local M = {}

M.base_30 = {
  white = "#4c4f69",
  darker_black = "#ccd0da",
  black = "#dce0e8", --  nvim bg
  black2 = "#efefef",
  one_bg = "#ebebeb",
  one_bg2 = "#ccd0da", -- Highlight of context
  one_bg3 = "#d7d7d7",
  grey = "#acb0be",
  grey_fg = "#8c8fa1",
  grey_fg2 = "#acacac", -- Highlight background
  light_grey = "#8c8fa1", -- Line numbers
  red = "#d20f39",
  baby_pink = "#dd7878",
  pink = "#ea76cb",
  line = "#e1e1e1", -- for lines like vertsplit
  green = "#40a02b",
  vibrant_green = "#94e76b",
  blue = "#1e66f5",
  nord_blue = "#04a5e5",
  yellow = "#df8e1d",
  sun = "#f3c78b",
  purple = "#8839ef",
  dark_purple = "#8627e6",
  teal = "#179299",
  orange = "#df8e1d",
  cyan = "#95E6CB",
  statusline_bg = "#ccd0da",
  lightbg = "#e6e6e6",
  pmenu_bg = "#95E6CB",
  folder_bg = "#5c5f77",
}

M.base_16 = {
  base00 = "#dce0e8",
  base01 = "#e6e9ef",
  base02 = "#ccd0da",
  base03 = "#bcc0cc",
  base04 = "#acb0be",
  base05 = "#4c4f69",
  base06 = "#dc8a78",
  base07 = "#7287fd",
  base08 = "#d20f39",
  base09 = "#fe640b",
  base0A = "#df8e1d",
  base0B = "#40a02b",
  base0C = "#179299",
  base0D = "#1e66f5",
  base0E = "#8839ef",
  base0F = "#dd7878",
}

M.polish_hl = {
  luaTSField = { fg = M.base_16.base0E },
  PmenuSel = { fg = M.base_30.black, bg = M.base_30.pmenu_bg },
  ["@tag.delimiter"] = { fg = M.base_30.base0D },
  ["@parameter"] = { fg = M.base_16.base09 },
  ["@constructor"] = { fg = M.base_16.base0C },
  ["@tag.attribute"] = { fg = M.base_30.base0F },
}

M = require("base46").override_theme(M, "latte")

M.type = "light"

return M
