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
}
