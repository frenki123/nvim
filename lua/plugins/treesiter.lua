return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function ()
		require('nvim-treesitter.configs').setup ({
			ensure_installed = { 'bash', 'html', 'lua', 'markdown', 'vim', 'vimdoc',
			'python', 'go'},
			-- Autoinstall languages that are not installed
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end

}
