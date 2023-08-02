local M = { "jose-elias-alvarez/null-ls.nvim" }

function M.config()
  local null_ls = require("null-ls")

  local fmt = null_ls.builtins.formatting

  null_ls.setup {
      sources = {
        fmt.dart_format,
        fmt.stylua,
        fmt.eslint_d,
        fmt.prettier.with({
          filetypes = { "html", "json", "yaml", "markdown", "javascript", "typescript" },
        }),
    },
  }
end

return M
