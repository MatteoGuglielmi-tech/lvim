local texlab_opts = {
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

local marksmen_opts = {
    cmd = { "marksmen" },
    filetypes = { "tex", "bib", "plaintex" },
}

require("lvim.lsp.manager").setup("textlab", texlab_opts)
require("lvim.lsp.manager").setup("marksmen", marksmen_opts)

local linters = require "lvim.lsp.null-ls.linters"
linters.setup { { command = "cspell", filetypes = { "markdown", "tex" } } }
