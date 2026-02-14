local lspconfig = require("lspconfig")

-- NvChad defaults
local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- =====================
-- C / C++
-- =====================
lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "clangd", "--compile-commands-dir=." },
}

-- =====================
-- Web LSPs
-- =====================
local servers = {
  "html",
  "cssls",
  "ts_ls",
  "jsonls",
  "emmet_ls",
  "eslint",
}

for _, server in ipairs(servers) do
  lspconfig[server].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
