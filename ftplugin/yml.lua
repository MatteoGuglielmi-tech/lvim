vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "yamlls" })

local yamlls_opts = {
  single_file_support = true,
  cmd = { "yaml-language-server", "--stdio" },
  filetypes = { "yaml" },
  settings = {
    yaml = {
      format = {
        enable = true,
      },
      schemas = {
        ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "docker-compose.yml",
        ["https://raw.githubusercontent.com/projectatomic/ContainerApplicationGenericLabels/master/schema.yaml"] = "Dockerfile",
      },
    },
  },
}

require("lvim.lsp.manager").setup("yamlls", yamlls_opts)
