local function enableTransparensy()
   vim.api.nvim_set_hl(0, "normal", { bg = "none" })
end

return {
    {
	"folke/tokyonight.nvim",
	config = function()
		vim.cmd.colorscheme "tokyonight"
		enableTransparensy()
	end
    },
    {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		theme = 'tokyonight',
	}
    },
}
