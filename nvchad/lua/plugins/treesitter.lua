---@type NvPluginSpec[]
local plugins = {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        opts = function(_, opts)
            vim.list_extend(opts.ensure_installed, { "rust" })
            opts.ensure_installed = { "rust" }
        end,
    },
}

return plugins

