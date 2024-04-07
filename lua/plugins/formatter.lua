return {
    "stevearc/conform.nvim",
    config = function()
        local conform = require "conform"
        conform.setup {
            formatters_by_ft = {
                lua = { "stylua" },
                python = { "ruff_format" },
                go = { "goimports" },
            },
        }
        vim.keymap.set(
            "n",
            "<leader>F",
            conform.format,
            { desc = "[F]ormat code" }
        )
        vim.api.nvim_create_autocmd("BufWritePre", {

            desc = "Autoformat code on save",
            group = vim.api.nvim_create_augroup(
                "autoformat-on-save",
                { clear = true }
            ),
            callback = function()
                conform.format()
            end,
        })
    end,
}
