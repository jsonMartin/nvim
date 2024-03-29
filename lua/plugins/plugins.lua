return {
  -- Use Biome instead of prettier / eslint
  -- {
  --   "stevearc/conform.nvim",
  --   enable = false,
  -- },

  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["javascript"] = { "biome" },
        ["javascriptreact"] = { "biome" },
        ["typescript"] = { "biome" },
        ["typescriptreact"] = { "biome" },
        ["vue"] = { "biome" },
        ["css"] = { "biome" },
        ["scss"] = { "biome" },
        ["less"] = { "biome" },
        ["html"] = { "biome" },
        ["json"] = { "biome" },
        ["jsonc"] = { "biome" },
        ["yaml"] = { "biome" },
        ["markdown"] = { "biome" },
        ["markdown.mdx"] = { "biome" },
        ["graphql"] = { "biome" },
        ["handlebars"] = { "biome" },
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "biome",
        "svelte-language-server",
        "astro-language-server",
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
      filesystem = {
        filtered_items = {
          visible = true,
          -- hide_dotfiles = false,
          -- hide_gitignored = false,
          -- hide_by_name = {
          --   ".github",
          --   "*.lock",
          --   "*.lock.json",
          -- },
          -- never_show = { ".git" },
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
