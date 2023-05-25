vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "texlab" })

local texlab_opts = {
  single_file_support = true,
  cmd = { "texlab" },
  settings = {
    texlab = {
      build = {
        args = {
          "-pdf",
          "-interaction=nonstopmode",
          "-synctex=1",
          "%f",
        },
        executable = "latexmk",
        onSave = true,
      },
      chktex = {
        onEdit = true,
        onOpenAndSave = false,
      },
      forwardSearch = {
        executable = "zathura",
        args = { "--synctex-forward", "%1:1:%f", "%p" },
      },
      lint = {
        onChange = true,
      },
      latexFormatter = "latexindent",
      latexindent = {
        modifyLineBreaks = true,
      },
    },
  },
  filetypes = { "tex", "bib", "plaintex" },
}

require("lvim.lsp.manager").setup("texlab", texlab_opts)
