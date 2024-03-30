---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>q"] = { "<Cmd> qa <CR>", "Quit Nvchad" },
    ["<leader>gg"] = { "<Cmd> LazyGit <CR>", "Lazygit" },
    ["<leader>tc"] = { "<Cmd> TodoTelescope <CR>", "Todo Telescope" },
    -- zenmode
    ["<leader>tz"] = { "<Cmd> ZenMode <CR>", "ZenMode" },
  },
}

-- more keybinds!
M.typescript_tools = {
  n = {
    ["<leader>lo"] = { "<Cmd> TSToolsOrganizeImports <CR>", "Organize Imports" },
    ["<leader>lO"] = { "<Cmd> TSToolsSortImports <CR>", "Sort Imports" },
    ["<leader>lu"] = { "<Cmd> TSToolsRemoveUnused <CR>", "Remove Unused" },
    ["<leader>lz"] = { "<Cmd> TSToolsGoToSourceDefinition <CR>", "Go To Source Difinition" },
    ["<leader>lR"] = { "<Cmd> TSToolsRemoveUnusedImports <CR>", "Remove Unused Imports" },
    ["<leader>lF"] = { "<Cmd> TSToolsFixAll <CR>", "Fix All" },
    ["<leader>lA"] = { "<Cmd> TSToolsAddMissingImports <CR>", "Add Missing Imports" },
  },
}

M.telescope = {
  plugin = true,

  n = {
    -- find
    ["<leader>fw"] = { "<cmd> Telescope live_grep_args <CR>", "Live grep" },
  },
}

return M
