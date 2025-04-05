local function biome_lsp_or_prettier(bufnr)
  local has_biome_lsp = vim.lsp.get_active_clients({
    bufnr = bufnr,
    name = "biome",
  })[1]
  if has_biome_lsp then
    return {}
  end
  local has_prettier = vim.fs.find({
    -- https://prettier.io/docs/en/configuration.html
    ".prettierrc",
    ".prettierrc.json",
    ".prettierrc.yml",
    ".prettierrc.yaml",
    ".prettierrc.json5",
    ".prettierrc.js",
    ".prettierrc.cjs",
    ".prettierrc.toml",
    "prettier.config.js",
    "prettier.config.cjs",
  }, { upward = true })[1]
  if has_prettier then
    return { "prettier" }
  end
  return { "biome" }
end

return {
  -- ----------------------------------
  -- SUPERMAVEN
  -- Use Supermaven instead of Copilot
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<Tab>",
          clear_suggestion = "<C-]>",
          accept_word = "<C-j>",
        },
      })
    end,
  },
  -- Disable Tab key for Supermaven autocompletion
  {
    "hrsh7th/nvim-cmp",
    keys = {
      { "<tab>", false, mode = { "i", "s" } },
      { "<s-tab>", false, mode = { "i", "s" } },
    },
  },
  -- Disable Tab key for Supermaven autocompletion
  {
    "L3MON4D3/LuaSnip",
    keys = {
      { "<tab>", false, mode = { "i", "s" } },
      { "<s-tab>", false, mode = { "i", "s" } },
    },
  },
  -- ----------------------------------

  -- Use Biome instead of prettier / eslint
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ["javascript"] = biome_lsp_or_prettier,
        ["javascriptreact"] = biome_lsp_or_prettier,
        ["typescript"] = biome_lsp_or_prettier,
        ["typescriptreact"] = biome_lsp_or_prettier,
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
        -- "svelte-language-server",
        -- "astro-language-server",
      },
    },
  },

  -- Custom Settings for Treesitter
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
          init_selection = "<C-s>",
          node_incremental = "<C-s>",
          scope_incremental = false,
        },
      },
    },
  },

  -- TMUX & VIM integration
  -- {
  --   "christoomey/vim-tmux-navigator",
  --   cmd = {
  --     "TmuxNavigateLeft",
  --     "TmuxNavigateDown",
  --     "TmuxNavigateUp",
  --     "TmuxNavigateRight",
  --     "TmuxNavigatePrevious",
  --   },
  --   keys = {
  --     { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
  --     { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
  --     { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
  --     { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
  --     { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
  --   },
  -- },
  --

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    cmd = "Neotree",
    opts = {
      window = {
        position = "right",
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

  {
    "folke/noice.nvim",
    commit = "d9328ef",
  },
}
