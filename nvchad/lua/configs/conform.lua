local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    rust = { "/data/data/com.termux/files/usr/bin/rustfmt" }
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

format_on_save = {
  --   -- These options will be passed to conform.format()
timeout_ms = 500,
lsp_fallback = true,
},
}

return options
