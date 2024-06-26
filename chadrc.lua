---@type ChadrcConfig
local M = {}

local make_cool_stuff = {
  [[    ███╗   ███╗ █████╗ ██╗  ██╗███████╗   ]],
  [[    ████╗ ████║██╔══██╗██║ ██╔╝██╔════╝   ]],
  [[    ██╔████╔██║███████║█████╔╝ █████╗     ]],
  [[    ██║╚██╔╝██║██╔══██║██╔═██╗ ██╔══╝     ]],
  [[    ██║ ╚═╝ ██║██║  ██║██║  ██╗███████╗   ]],
  [[    ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   ]],
  [[      ██████╗ ██████╗  ██████╗ ██╗        ]],
  [[     ██╔════╝██╔═══██╗██╔═══██╗██║        ]],
  [[     ██║     ██║   ██║██║   ██║██║        ]],
  [[     ██║     ██║   ██║██║   ██║██║        ]],
  [[     ╚██████╗╚██████╔╝╚██████╔╝███████╗   ]],
  [[      ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝   ]],
  [[███████╗████████╗██╗   ██╗███████╗███████╗]],
  [[██╔════╝╚══██╔══╝██║   ██║██╔════╝██╔════╝]],
  [[███████╗   ██║   ██║   ██║█████╗  █████╗  ]],
  [[╚════██║   ██║   ██║   ██║██╔══╝  ██╔══╝  ]],
  [[███████║   ██║   ╚██████╔╝██║     ██║     ]],
  [[╚══════╝   ╚═╝    ╚═════╝ ╚═╝     ╚═╝     ]],
}

local dashboard_custom_header = {
  " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
  " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
  " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
  " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
  " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
  " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
}

local myname = {
  "    ███╗   ███╗ █████╗      ██╗██╗██████╗     ",
  "    ████╗ ████║██╔══██╗     ██║██║██╔══██╗    ",
  "    ██╔████╔██║███████║     ██║██║██║  ██║    ",
  "    ██║╚██╔╝██║██╔══██║██   ██║██║██║  ██║    ",
  "    ██║ ╚═╝ ██║██║  ██║╚█████╔╝██║██████╔╝    ",
  "    ╚═╝     ╚═╝╚═╝  ╚═╝ ╚════╝ ╚═╝╚═════╝     ",
  "                                              ",
  "███████╗ █████╗ ██╗  ██╗███████╗██████╗ ██╗██╗",
  "╚══███╔╝██╔══██╗██║  ██║██╔════╝██╔══██╗██║██║",
  "  ███╔╝ ███████║███████║█████╗  ██║  ██║██║██║",
  " ███╔╝  ██╔══██║██╔══██║██╔══╝  ██║  ██║██║╚═╝",
  "███████╗██║  ██║██║  ██║███████╗██████╔╝██║██╗",
  "╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═════╝ ╚═╝╚═╝",
  "                                              ",
}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "catppuccin",
  theme_toggle = { "ayu_light", "catppuccin" },

  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "arrow",
    overriden_modules = nil,
  },

  cmp = {
    style = "atom",
    icons = true,
    selected_item_bg = "colored",
    border_color = "one_bg",
    lspkind_text = true,
  },
  telescope = {
    style = "borderless",
  },

  hl_override = highlights.override,
  hl_add = highlights.add,
  nvdash = {
    load_on_startup = true,
    header = myname,
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
