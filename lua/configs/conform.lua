-- local options = {
--   formatters_by_ft = {
--     lua = { "stylua" },
--     -- css = { "prettier" },
--     -- html = { "prettier" },
--   },

--   -- format_on_save = {
--   --   -- These options will be passed to conform.format()
--   --   timeout_ms = 500,
--   --   lsp_fallback = true,
--   -- },
-- }

-- return options

local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    c = { "clang_format" },
    cpp = { "clang_format" },
    h = { "clang_format" },
  },

  format_on_save = {
    lsp_fallback = true,
    timeout_ms = 500, 
  },
}

return options

