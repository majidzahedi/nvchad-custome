local M = {}

M.base_30 = {
  white = "#D9E0EE",
  darker_black = "#232634",
  black = "#292c3c", --  nvim bg
  black2 = "#414559",
  one_bg = "#2d2c3c", -- real bg of onedark
  one_bg2 = "#363545",
  one_bg3 = "#3e3d4d",
  grey = "#737994",
  grey_fg = "#737994",
  grey_fg2 = "#737994",
  light_grey = "#737994",
  red = "#e78284",
  baby_pink = "#ffa5c3",
  pink = "#F5C2E7",
  line = "#383747", -- for lines like vertsplit
  green = "#a6d189",
  vibrant_green = "#b6f4be",
  nord_blue = "#8bc2f0",
  blue = "#89B4FA",
  yellow = "#e5c890",
  sun = "#ffe9b6",
  purple = "#d0a9e5",
  dark_purple = "#c7a0dc",
  teal = "#81c8be",
  orange = "#ea999c",
  cyan = "#99d1db",
  statusline_bg = "#232634",
  lightbg = "#414559",
  pmenu_bg = "#a6d189",
  folder_bg = "#8caaee",
  lavender = "#c7d1ff",
}

M.base_16 = {
  base00 = "#303446",
  base01 = "#292c3c",
  base02 = "#414559",
  base03 = "#51576d",
  base04 = "#626880",
  base05 = "#c6d0f5",
  base06 = "#f2d5cf",
  base07 = "#babbf1",
  base08 = "#e78284",
  base09 = "#ef9f76",
  base0A = "#e5c890",
  base0B = "#a6d189",
  base0C = "#81c8be",
  base0D = "#8caaee",
  base0E = "#ca9ee6",
  base0F = "#eebebe",
}

M.polish_hl = {
  ["@variable"] = { fg = M.base_30.lavender },
  ["@property"] = { fg = M.base_30.teal },
  ["@variable.builtin"] = { fg = M.base_30.red },
}

M.type = "dark"

M = require("base46").override_theme(M, "frappe")

return M
