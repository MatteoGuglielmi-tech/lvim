-- WARNING: commitlint not working unders same gitlint conditions.

vim.filetype.add {
  extension = {
    gitcommit = "gitcommit",
  },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "gitlint", filetypes = { "gitcommit" }, args = { "--msg-filename", "$FILENAME" } },
}
