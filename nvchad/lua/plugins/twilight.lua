return {
    "folke/twilight.nvim",
    cmd = "Twilight",
    keys = {
        { "<leader>i", "<cmd>Twilight<cr>", desc = "Toggle Twilight" },
    },
    opts = {
        dimming = {
            alpha = 0.15,
            color = { "Normal", "#ffffff" },
            term_bg = "#000000",
            inactive = false,
        },
        context = 1,
        treesitter = true,
    },
}
