return {
  -- Use Biome instead of prettier / eslint
  {
    "stevearc/conform.nvim",
    enable = false,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "biome",
      },
    },
  },

  -- Custom Keybindings for treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "svelte",
        "astro",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-.>",
          node_incremental = "<C-.>",
          -- scope_incremental = false,
          node_decremental = "<C-,>",
        },
      },
    },
  },

  -- TMUX & VIM integration
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    cmd = "Neotree",
    opts = {
      window = {
        mappings = {
          ["S"] = false,
          ["s"] = false,
          ["-"] = "open_split",
          ["_"] = "open_split",
          ["\\"] = "open_vsplit",
          ["|"] = "open_vsplit",
        },
      },
    },
    keys = {
      {
        "s",
        function()
          require("flash").jump()
        end,
        desc = "Execute flash",
      },
    },
  },
}
