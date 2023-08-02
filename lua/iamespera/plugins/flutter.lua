local M = {
  "akinsho/flutter-tools.nvim",
}

M.config = function()
  local handlers = require('iamespera.lsp.handlers')
  require('flutter-tools').setup({
    dev_log = {
      enabled = true,
      open_cmd = "tabedit", -- command to use to open the log buffer
    },

    lsp = {
      on_attach = function(_, bufnr)
        handlers.enable_format_on_save(_, bufnr)
        handlers.on_attach(_, bufnr)
      end,
      capabilities = handlers.capabilities,

      settings = {
        renameFileWithClasses = "always",
      }
    },
  })
end

return M
