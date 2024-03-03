return {
    "stevearc/conform.nvim",
    config = function()
        local conform = require "conform"
        conform.setup {
            formatters_by_ft = {
                lua = { "stylua" },
            },
        }
        vim.keymap.set(
            "n",
            "<leader>F",
            conform.format,
            { desc = "[F]ormat code" }
        )
    end,
}
