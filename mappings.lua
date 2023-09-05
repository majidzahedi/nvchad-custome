---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>q"] = { "<Cmd> qa <CR>", "Quit Nvchad" },
    ["<leader>gg"] = { "<Cmd> LazyGit <CR>", "Lazygit" },
    ["<leader>tc"] = { "<Cmd> TodoTelescope <CR>", "Lazygit" },
  },
}

-- more keybinds!

return M
