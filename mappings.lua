---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>q"] = { "<Cmd> qa <CR>", "Quit Nvchad" },
  },
}

-- more keybinds!

return M
