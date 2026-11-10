return {
    {
        "lukas-reineke/indent-blankline.nvim",
        enabled = false,
    },

    {
        "echasnovski/mini.indentscope",
        version = false,
        event = "VeryLazy",
        config = function()
            require("mini.indentscope").setup({
                symbol = "│",
                draw = {
                    delay = 10,
                    animation = require("mini.indentscope").gen_animation.linear({
                        easing = "in-out",
                        duration = 5,
                    }),
                },
                options = {
                    try_as_border = true,
                },
            })
        end,
        init = function()
            vim.api.nvim_create_autocmd("FileType", {
                pattern = {
                    "help", "alpha", "dashboard", "neo-tree",
                    "Trouble", "lazy", "mason", "notify",
                    "toggleterm", "NvimTree", "nvdash", "nvcheatsheet",
                },
                callback = function()
                    vim.b.miniindentscope_disable = true
                end,
            })
        end,
    },
}
