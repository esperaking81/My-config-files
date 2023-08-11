local M = {
	"ayu-theme/ayu-vim",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
}

function M.config()
	vim.cmd("set termguicolors")
	vim.cmd('let ayucolor="dark"')
	-- vim.cmd("colorscheme ayu")
end

return M
