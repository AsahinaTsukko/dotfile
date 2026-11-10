require("conform").setup({
  formatters_by_ft = {
    rust = { "rustfmt" },
  },
  -- 覆盖内置 rustfmt 格式化器的命令为绝对路径
  formatters = {
    rustfmt = {
      command = "/data/data/com.termux/files/usr/bin/rustfmt",
    },
  },
  -- 保存时自动格式化（可选，NvChad 默认可能已开启）
  format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback", -- 若 rustfmt 不可用，回退到 LSP 格式化
  },
})

return {}