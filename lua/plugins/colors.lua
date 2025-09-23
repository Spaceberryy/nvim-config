local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) -- transparent floats
end

return {
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            style = "moon",     -- try "moon" or "storm" for better float contrast
            transparent = true, -- still need this false to apply background highlight tweaks
            terminal_colors = true,
            styles = {
                floats = "transparent", -- affects ToggleTerm and floating windows
                sidebars = "transparent",
            },
        },
        config = function(_, opts)
            require("tokyonight").setup(opts)
            vim.cmd.colorscheme("tokyonight")
            enable_transparency()
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            theme = "tokyonight",
        },
    },
}
