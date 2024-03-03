vim.g.mapleader = " "
-- Navigate up and down in the middle
vim.keymap.set("n", "<C-Down>", "<C-d>zz")
vim.keymap.set("n", "<C-Up>", "<C-u>zz")
-- Copy/Paste from + register
vim.keymap.set({"n", "v"}, "<leader>p", "\"+p")
vim.keymap.set({"n", "v"}, "<leader>P", "\"+P")
vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
vim.keymap.set("i", "<C-v>", [[<C-r>+]])
-- delete without registry
vim.keymap.set({"n", "v"}, "<Del>", [["_<Del>]])
-- move code lines
vim.keymap.set("v", "<C-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-Up>", ":m '<-2<CR>gv=gv")
-- some helper functions
vim.keymap.set({"n", "v"}, "<leader>ee", ":Ex<CR>")
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
