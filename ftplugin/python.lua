-- local status_ok, which_key = pcall(require, "which-key")
-- if not status_ok then
--   return
-- end

-- Advanced pyright configuration
vim.list_extend(
  lvim.lsp.automatic_configuration.skipped_servers,
  { "pyright", "jsonls" }
)

local pyright_opts = {
  single_file_support = true,
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  settings = {
    pyright = {
      disableLanguageServices = false,
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        autoImportCompletions = true,
        autoSearchPaths = true,
        diagnosticMode = "workspace", -- openFilesOnly, workspace
        typeCheckingMode = "basic", -- off, basic, strict
        useLibraryCodeForTypes = true,
      },
    },
  },
}

require("lvim.lsp.manager").setup("pyright", pyright_opts)

-- setup formatting
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    name = "black",
    filetypes = { "python" },
    args = { "--quiet", "-", "--fast" },
  },
}
formatters.setup {
  {
    name = "autoflake",
    filetypes = { "python" },
    args = {
      "--in-place",
      "--remove-all-unused-imports",
    },
  },
}
formatters.setup {
  {
    name = "reorder_python_imports",
    filetypes = { "python" },
  },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    name = "pydocstyle",
    filetypes = { "python" },
    args = { "$FILENAME" },
  },
}

-- setup debug adapter
lvim.builtin.dap.active = true
local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")
pcall(function()
  require("dap-python").setup(mason_path .. "packages/debugpy/venv/bin/python")
end)

-- setup testing
require("neotest").setup {
  adapters = {
    require "neotest-python" {
      -- Extra arguments for nvim-dap configuration
      -- See https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for values
      dap = {
        justMyCode = false,
        console = "integratedTerminal",
      },
      args = { "--log-level", "DEBUG", "--quiet" },
      runner = "pytest",
    },
  },
}

-- require("swenv").setup {
--   -- Should return a list of tables with a `name` and a `path` entry each.
--   -- Gets the argument `venvs_path` set below.
--   -- By default just lists the entries in `venvs_path`.
--   get_venvs = function(venvs_path)
--     return require("swenv.api").get_venvs(venvs_path)
--   end,
--   -- Path passed to `get_venvs`.
--   venvs_path = vim.fn.expand "$HOME/.conda/envs",
--   -- Something to do after setting an environment, for example call vim.cmd.LspRestart
--   post_set_venv = function()
--     vim.cmd [[LspRestart]]
--   end,
-- }

-- local mappings = {
--   C = {
--     name = "Python",
--     c = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Env" },
--   },
-- }

-- local opts = {
--   mode = "n", -- NORMAL mode
--   prefix = "<leader>",
--   buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
--   silent = true, -- use `silent` when creating keymaps
--   noremap = true, -- use `noremap` when creating keymaps
--   nowait = true, -- use `nowait` when creating keymaps
-- }

-- which_key.register(mappings, opts)

--------- EDITOR SETTINGS ---------
local py_opts = {
  shiftwidth = 4, -- the number of spaces inserted for each indentation
  tabstop = 4, -- insert 2 spaces for a tab
}

for k, v in pairs(py_opts) do
  vim.opt[k] = v
end
