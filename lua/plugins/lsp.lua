return {
    { "folke/neodev.nvim" },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",

            -- Useful status updates for LSP.
            { "j-hui/fidget.nvim", opts = {} },
        },
        config = function()
            -- on LspAttach assigne keymaps and options for LSP
            vim.api.nvim_create_autocmd("LspAttach", {
                group = vim.api.nvim_create_augroup(
                    "lsp-attach",
                    { clear = true }
                ),
                callback = function(event)
                    -- helper map function to create keymaps for LSP
                    local map = function(keys, func, desc)
                        vim.keymap.set(
                            "n",
                            keys,
                            func,
                            { buffer = event.buf, desc = "LSP: " .. desc }
                        )
                    end

                    map(
                        "gd",
                        require("telescope.builtin").lsp_definitions,
                        "[G]oto [D]efinition"
                    )
                    map(
                        "gr",
                        require("telescope.builtin").lsp_references,
                        "[G]oto [R]eferences"
                    )
                    map(
                        "gI",
                        require("telescope.builtin").lsp_implementations,
                        "[G]oto [I]mplementation"
                    )
                    map(
                        "<leader>D",
                        require("telescope.builtin").lsp_type_definitions,
                        "Type [D]efinition"
                    )
                    map("<F2>", vim.lsp.buf.rename, "Rename")

                    map("<F5>", vim.lsp.buf.hover, "Hover Documentation")

                    map("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")

                    local client =
                        vim.lsp.get_client_by_id(event.data.client_id)
                    if
                        client
                        and client.server_capabilities.documentHighlightProvider
                    then
                        vim.api.nvim_create_autocmd(
                            { "CursorHold", "CursorHoldI" },
                            {
                                buffer = event.buf,
                                callback = vim.lsp.buf.document_highlight,
                            }
                        )

                        vim.api.nvim_create_autocmd(
                            { "CursorMoved", "CursorMovedI" },
                            {
                                buffer = event.buf,
                                callback = vim.lsp.buf.clear_references,
                            }
                        )
                    end
                end,
            })
            require("mason").setup()
            require("mason-lspconfig").setup()
            require("neodev").setup {}
            -- setup lspconfig for every installed server
            require("mason-lspconfig").setup_handlers {
                function(server_name) -- default handler (optional)
                    require("lspconfig")[server_name].setup {}
                end,
            }
        end,
    },
}
