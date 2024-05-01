-- Navigate up and down in the middle
vim.keymap.set("n", "<C-Down>", "<C-d>zz")
vim.keymap.set("n", "<C-Up>", "<C-u>zz")
-- Copy/Paste from + register
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p')
vim.keymap.set({ "n", "v" }, "<leader>P", '"+P')
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set("i", "<C-v>", [[<C-r>+]])
-- delete without registry
vim.keymap.set({ "n", "v" }, "<Del>", [["_<Del>]])
-- move code lines
vim.keymap.set("v", "<C-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-Up>", ":m '<-2<CR>gv=gv")
-- some helper functions
vim.keymap.set({ "n", "v" }, "<leader>ee", ":Ex<CR>")
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<C-Tab>", "<C-6>")

-- Diagnostic keymaps
vim.keymap.set(
    "n",
    "[d",
    vim.diagnostic.goto_prev,
    { desc = "Go to previous [D]iagnostic message" }
)
vim.keymap.set(
    "n",
    "]d",
    vim.diagnostic.goto_next,
    { desc = "Go to next [D]iagnostic message" }
)
vim.keymap.set(
    "n",
    "<leader>e",
    vim.diagnostic.open_float,
    { desc = "Show diagnostic [E]rror messages" }
)
vim.keymap.set(
    "n",
    "<leader>q",
    vim.diagnostic.setloclist,
    { desc = "Open diagnostic [Q]uickfix list" }
)
