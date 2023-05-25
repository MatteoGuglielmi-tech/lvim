local markdown_opts = {
  cmd = { "marksman" },
  filetypes = { "markdown" },
  single_fle_support = true,
}

require("lvim.lsp.manager").setup("marksman", markdown_opts)

-- NOTE: Spelling is managed by spell
-- :help spell for shortcuts
-- ]s and [s jumps to mispelled words
-- ]S and [S jumps only to bad words
-- zg to add word under cursot as good word
-- zw to add word under cursor as bad word
-- z= to get suggestions for word under cursor
