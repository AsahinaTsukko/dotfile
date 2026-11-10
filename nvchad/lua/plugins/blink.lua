return {
  "saghen/blink.cmp",
  opts = {
    cmdline = {
      enabled = true,
      keymap = { preset = "cmdline" },
      completion = {
        menu = { auto_show = true },
        list = {
          selection = { preselect = false, auto_insert = false },
        },
      },
    },

    signature = {
      enabled = true,
      window = { show_documentation = false },
    },
    completion = {
      documentation = { auto_show = true },
      ghost_text = { enabled = true },
      menu = {
        draw = {
          treesitter = { "lsp" },
          columns = {
            { "kind_icon", "kind", gap = 1 },
            { "label", "label_description", gap = 1 },
          },
          components = {
            kind = {
              ellipsis = false,
              width = { max = 1 },
              text = function(ctx) return ctx.kind end,
              highlight = function(ctx) return ctx.kind_hl end,
            },
          },
        },
      },
    },
  },
}
