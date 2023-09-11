-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--[[
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
]]--

return {
	"ThePrimeagen/harpoon",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = true,
	keys = {
		{ "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Mark file with harpoon" },
		{ "<C-e>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Show harpoon marks"},
		{ "<C-h>", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = "Go to 1st mark"},
		{ "<C-j>", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "Go to 2nd mark"},
		{ "<C-k>", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = "Go to 3rd mark"},
		{ "<C-l>", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = "Go to 4th mark"},
	},
}

