-- highlight text on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup(
        "kickstart-highlight-yank",
        { clear = true }
    ),
    callback = function()
        vim.highlight.on_yank()
    end,
})
-- remove relative numbers on window exit
vim.api.nvim_create_autocmd(
    { "BufLeave", "BufWinLeave", "WinLeave", "FocusLost" },
    {
        desc = "Turn off relative numbers when window is not active",
        group = vim.api.nvim_create_augroup(
            "rellative-num-off",
            { clear = true }
        ),
        callback = function()
            vim.opt.relativenumber = false
        end,
    }
)
-- set relative numbers on window enter
vim.api.nvim_create_autocmd(
    { "BufEnter", "BufWinEnter", "WinEnter", "FocusGained" },
    {
        desc = "Turn on relative numbers when window is active",
        group = vim.api.nvim_create_augroup(
            "rellative-num-on",
            { clear = true }
        ),
        callback = function()
            vim.opt.relativenumber = true
        end,
    }
)
-- remove highligh on mode change
vim.api.nvim_create_autocmd("ModeChanged", {
    desc = "Unhighlight search on mode change",
    group = vim.api.nvim_create_augroup(
        "highlight-off-modechg",
        { clear = true }
    ),
    callback = function()
        vim.cmd.nohlsearch()
    end,
})
