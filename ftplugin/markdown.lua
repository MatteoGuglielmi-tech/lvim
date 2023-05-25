vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "marksman", "html" })

local markdown_opts = {
  cmd = { "marksman" },
  filetypes = { "markdown" },
  single_fle_support = true,
}

require("lvim.lsp.manager").setup("marksman", markdown_opts)

local html_opts = {
  cmd = { "html-languageserver", "--stdio" },
  filetypes = { "html", "markdown" },
  single_fle_support = true,
}

require("lvim.lsp.manager").setup("html", html_opts)

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "prettier", filetypes = { "css", "markdown", "html" } },
  { command = "cbfmt", filetypes = { "markdown" } },
}

-- NOTE: Spelling is managed by spell
-- :help spell for shortcuts
-- ]s and [s jumps to mispelled words
-- ]S and [S jumps only to bad words
-- zg to add word under cursot as good word
-- zw to add word under cursor as bad word
-- z= to get suggestions for word under cursor

--------- EDITOR SETTINGS ---------
local md_opts = {
  shiftwidth = 2, -- the number of spaces inserted for each indentation
  tabstop = 2, -- insert 2 spaces for a tab
}

for k, v in pairs(md_opts) do
  vim.opt[k] = v
end
