return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false, -- add this
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        local configs = require("nvim-treesitter")
        configs.setup({
            highlight = { enable = true },
            indent = { enable = true },
            autotag = { enable = true },
            ensure_installed = {
                "lua", "vim", "bash",
                "c", "cpp", "python",
            },
            auto_install = true,
        })
    end,
}
