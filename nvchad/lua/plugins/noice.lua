if true then return {} end

return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  opts = {
    messages = {
      enabled = true,
    },
    lsp = {
      progress = {
        enabled = true,
      },
      hover = {
        enabled = true,
      },
      signature = {
        enabled = false,
      },
      message = {
        enabled = false,
      },
    },
    popupmenu = {
      enabled = false,
    },
    cmdline = {
      enabled = false,
    },
    notify = {
      enabled = false,
    },
    mini = {
      enabled = false,
    },
    routes = {},
    presets = {},
    views = {},
    smart_move = {
      enabled = false,
    },
    health = {
      enabled = false,
    },
  },
  -- 可以添加一个初始化函数来确保
  config = function(_, opts)
    require("noice").setup(opts)
  end,
}