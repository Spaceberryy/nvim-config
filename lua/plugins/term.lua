return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            size = 20,
            open_mapping = [[<C-\>]],
            shade_filetypes = {},
            shade_terminals = true,
            shading_factor = 2,
            direction = "float",   -- 'vertical' | 'horizontal' | 'tab' | 'float'
            float_opts = {
                border = "curved", -- 'single' | 'double' | 'shadow' | 'curved'
            },
        })

        -- Keymap to run file based on filetype
        vim.keymap.set("n", "<leader>r", function()
            vim.cmd("write")

            local ft = vim.bo.filetype
            local fname = vim.fn.expand("%")
            local cmd = ""

            if ft == "python" then
                cmd = "python3 " .. fname
            elseif ft == "c" then
                cmd = string.format("gcc %s -o /tmp/a && /tmp/a", fname)
            elseif ft == "cpp" then
                cmd = string.format("g++ %s -o /tmp/a && /tmp/a", fname)
            else
                print("Unsupported filetype: " .. ft)
                return
            end

            require("toggleterm.terminal").Terminal
                :new({ cmd = cmd, direction = "float", close_on_exit = false })
                :toggle()
        end, { desc = "Run current file", noremap = true, silent = true })
    end,
}
