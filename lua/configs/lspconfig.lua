local lspconfig = require("lspconfig")

-- Use NvChad's LSP on_attach and default capabilities
local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Set up clangd for C/C++
lspconfig.clangd.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

-- You can add more LSPs below similarly
-- lspconfig.html.setup({ on_attach = on_attach, capabilities = capabilities })
-- lspconfig.cssls.setup({ on_attach = on_attach, capabilities = capabilities })
