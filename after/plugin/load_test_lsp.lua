local client = vim.lsp.start_client {
    name = "testinglsp",
    cmd = { "/home/frenki/projects/go/lspexample/main" },
}

if not client then
    vim.notify "client not attached"
    return
end

vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    callback = function()
        vim.lsp.buf_attach_client(0, client)
    end,
})
