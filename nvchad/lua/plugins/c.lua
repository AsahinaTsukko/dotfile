require("conform").setup({
    formatters_by_ft = {
        rust = { "rustfmt" },
    },
    formatters = {
        rustfmt = {
            command = "/data/data/com.termux/files/usr/bin/rustfmt",
        },
    },
    format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
    },
})

return {}

