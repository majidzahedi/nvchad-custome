local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "markdown",
    "markdown_inline",
    "dockerfile",
    "yaml",
    "go",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "tailwindcss-language-server",
    "prettier",
    "emmet-ls",

    -- devops stuff
    "docker-compose-language-service",
    "dockerfile-language-server",

    -- go stuff
    "gopls",

    -- spell checkers
    "cspell",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
    ignore = false,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.zenmode = {
  window = {
    options = {
      relativenumber = true,
    },
  },
}

M.fold = {
  opts = {
    -- provider_selector = function(_, ft, _)
    --   -- INFO some filetypes only allow indent, some only LSP, some only
    --   -- treesitter. However, ufo only accepts two kinds as priority,
    --   -- therefore making this function necessary :/
    --   local lspWithOutFolding = { "markdown", "bash", "sh", "bash", "zsh", "css", "html", "python" }
    --   if vim.tbl_contains(lspWithOutFolding, ft) then
    --     return { "treesitter", "indent" }
    --   else
    --     return { "lsp", "indent" }
    --   end
    -- end,
    -- -- open opening the buffer, close these fold kinds
    -- -- use `:UfoInspect` to get available fold kinds from the LSP
    -- close_fold_kinds = { "imports" },
    -- open_fold_hl_timeout = 500,
    filetype_exclude = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy", "mason" },
  },
  keys = {
    {
      "zr",
      function()
        require("ufo").openFoldsExceptKinds { "comment" }
      end,
      desc = "󰘖 󱃄 Open All Folds except comments",
    },
    {
      "zm",
      function()
        require("ufo").closeAllFolds()
      end,
      desc = "󰘖 󱃄 Close All Folds",
    },
    {
      "z1",
      function()
        require("ufo").closeFoldsWith(1)
      end,
      desc = "󰘖 󱃄 Close Level 1 Folds",
    },
    {
      "z2",
      function()
        require("ufo").closeFoldsWith(2)
      end,
      desc = "󰘖 󱃄 Close Level 2 Folds",
    },
    {
      "z3",
      function()
        require("ufo").closeFoldsWith(3)
      end,
      desc = "󰘖 󱃄 Close Level 3 Folds",
    },
    {
      "z4",
      function()
        require("ufo").closeFoldsWith(4)
      end,
      desc = "󰘖 󱃄 Close Level 4 Folds",
    },
  },
}

return M
