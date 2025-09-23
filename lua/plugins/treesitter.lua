
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag", -- optional: mostly for HTML/JSX
    },
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
            autotag = {
                enable = true,
            },
            ensure_installed = {
                "lua",
                "vim",
                "bash",
                "c",
                "cpp",
                "python",
            },
            auto_install = true,
        })
    end,
}
