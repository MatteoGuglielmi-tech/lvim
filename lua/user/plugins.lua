-- Additional Plugins
lvim.plugins = {
  "stevearc/dressing.nvim",
  "AckslD/swenv.nvim",
  "lunarvim/onedarker.nvim",
  "LunarVim/synthwave84.nvim",
  "roobert/tailwindcss-colorizer-cmp.nvim",
  "lunarvim/github.nvim",
  "nvim-treesitter/playground",
  "nvim-treesitter/nvim-treesitter-textobjects",
  "mfussenegger/nvim-jdtls",
  "opalmay/vim-smoothie",
  "j-hui/fidget.nvim",
  "christianchiarulli/nvim-ts-autotag",
  "kylechui/nvim-surround",
  "christianchiarulli/harpoon",
  "MattesGroeger/vim-bookmarks",
  "NvChad/nvim-colorizer.lua",
  "ghillb/cybu.nvim",
  "moll/vim-bbye",
  "windwp/nvim-spectre",
  "f-person/git-blame.nvim",
  "ruifm/gitlinker.nvim",
  "mattn/vim-gist",
  "mattn/webapi-vim",
  "folke/zen-mode.nvim",
  "lvimuser/lsp-inlayhints.nvim",
  "lunarvim/darkplus.nvim",
  "lunarvim/templeos.nvim",
  "kevinhwang91/nvim-bqf",
  "is0n/jaq-nvim",
  "ggandor/leap.nvim",
  "nacro90/numb.nvim",
  "TimUntersberger/neogit",
  "sindrets/diffview.nvim",
  "simrat39/rust-tools.nvim",
  "olexsmir/gopher.nvim",
  "leoluz/nvim-dap-go",
  "mfussenegger/nvim-dap-python",
  "jose-elias-alvarez/typescript.nvim",
  "mxsdev/nvim-dap-vscode-js",
  "petertriho/nvim-scrollbar",
  "renerocksai/telekasten.nvim",

  -- NOTE: For git integration
  "tpope/vim-fugitive",
  { "junegunn/gv.vim", dependencies = { "tpope/vim-fugitive" } },
  { "akinsho/git-conflict.nvim", version = "*", config = true },
  -- END NOTE
  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    },
    config = function()
      require("mason-null-ls").setup {
        ensure_installed = {
          -- Formatters
          "autoflake",
          "black",
          "reorder-python-imports",
          "shfmt",
          "stylua",
          "cbfmt",
          "google-java-format",
          -- linters
          "pydocstyle",
          "gitlint",
          "shellcheck",
        },
        automatic_installation = true,
      }
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = {
          "bashls",
          "jsonls",
          "lua_ls",
          "marksman",
          "pyright",
          "rust_analyzer",
          "texlab",
          "vimls",
          "yamlls",
          "html",
          "jdtls",
          -- "clangd",
        },
        automatic_installation = true,
      }
    end,
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      ---@diagnostic disable-next-line: different-requires
      require("todo-comments").setup {}
    end,
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "saecki/crates.nvim",
    version = "v0.3.0",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup {
        null_ls = {
          enabled = true,
          name = "crates.nvim",
        },
      }
    end,
  },
  "MunifTanjim/nui.nvim",
  "jackMort/ChatGPT.nvim",
  {
    "jinh0/eyeliner.nvim",
    config = function()
      require("eyeliner").setup {
        highlight_on_key = true,
      }
    end,
  },
  { "christianchiarulli/telescope-tabs", branch = "chris" },
  "monaqa/dial.nvim",
  {
    "0x100101/lab.nvim",
    build = "cd js && npm ci",
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
  },

  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },
  {
    "tzachar/cmp-tabnine",
    event = "InsertEnter",
    build = "./install.sh",
  },

  "MunifTanjim/nui.nvim",
  "Bryley/neoai.nvim",
  "mfussenegger/nvim-dap-python",
  "nvim-neotest/neotest",
  "nvim-neotest/neotest-python",

  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup {
        mapping = { "jk" },
        timeout = vim.o.timeoutlen,
        clear_empty_lines = false,
        keys = "<Esc>",
      }
    end,
  },

  {
    "HiPhish/nvim-ts-rainbow2",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("nvim-treesitter.configs").setup {
        rainbow = {
          enable = true,
          -- list of languages you want to disable the plugin for
          disable = {},
          -- Which query to use for finding delimiters
          query = "rainbow-parens",
          -- Highlight the entire buffer all at once
          strategy = require("ts-rainbow").strategy.global,
        },
      }
    end,
  },
}
