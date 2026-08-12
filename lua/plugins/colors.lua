local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    -- Catppuccin
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        lazy = false,
        opts = {
            flavour = "mocha",
            transparent_background = true,
            integrations = {
                lualine = true,
                treesitter = true,
                telescope = true,
                nvimtree = true,
                which_key = true,
                gitsigns = true,
            },
        },
        config = function(_, opts)
            require("catppuccin").setup(opts)
            vim.cmd.colorscheme("catppuccin-mocha")
            enable_transparency()
        end,
    },

    -- TokyoNight
    {
        "folke/tokyonight.nvim",
        lazy = true,
        opts = {
            style = "moon",
            transparent = true,
            terminal_colors = true,
            styles = {
                floats = "transparent",
                sidebars = "transparent",
            },
        },
    },

    -- Lualine
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            theme = "catppuccin",
        },
    },

    -- Colorscheme picker
    {
        "nvim-telescope/telescope.nvim",
        keys = {
            {
                "<leader>tc",
                function()
                    require("telescope.builtin").colorscheme()
                end,
                desc = "Colorschemes",
            },
        },
    },
}
