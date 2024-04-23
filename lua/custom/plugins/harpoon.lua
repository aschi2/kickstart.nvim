-- https://github.com/ThePrimeagen/harpoon/tree/harpoon2
-- Harpoon is a bookmarking plugin for neovim
return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("harpoon").setup({})
	end,
}
