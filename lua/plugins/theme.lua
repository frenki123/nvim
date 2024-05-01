return {
    -- {
    --     "catppuccin/nvim",
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         vim.cmd "colorscheme catppuccin-mocha"
    --     end,
    -- },
    {
        "rose-pine/neovim",
        lazy = false,
        priority = 1000,
        name = "rose-pine",
        config = function()
            local rose_pine = require "rose-pine"
            rose_pine.setup {
                styles = {
                    bold = true,
                    italic = true,
                    transparency = true,
                },
            }
            vim.cmd "colorscheme rose-pine-moon"
        end,
    },
    --{
    --    "navarasu/onedark.nvim",
    --    lazy = false,
    --    priority = 1000,
    --    config = function()
    --        require("onedark").setup {
    --            style = "darker"
    --        }
    --    end,
    --},
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {},
    },
}
