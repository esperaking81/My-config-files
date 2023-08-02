local M = {
  "windwp/nvim-autopairs",
}

function M.config()
  -- code
  require("nvim-autopairs").setup({
    disable_filetype = { "TelescopePrompt", "vim", "lua" },
  })
end

return M
