return {
    "stevearc/conform.nvim",
    config = function()
        local conform = require "conform"
        conform.setup {
            formatters_by_ft = {
                lua = { "stylua" },
                python = {"ruff_format"},
                go = {"goimports"},
                fsharp = {"fantomas"}
            },
        }
        vim.keymap.set(
            "n",
            "<leader>F",
            function()
                conform.format()
                vim.api.nvim_command("write")
            end,
            { desc = "[F]ormat code" }
        )
    end,
}
