return {
	"nvim-telescope/telescope.nvim",
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		pcall(require('telescope').load_extension, 'fzf')
		local builtin = require 'telescope.builtin'
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[S]earch [H]elp' })
		vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
		vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[S]earch [F]iles' })
		vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
		vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
	end
}
