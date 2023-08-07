local M = {
  "akinsho/flutter-tools.nvim",
}

M.config = function()
  local status_cmp_ok, cmp = pcall(require, 'cmp_nvim_lsp')
  if not status_cmp_ok then
      return
  end

  local lsp_zero = require 'lsp-zero'

  local handlers = require('iamespera.lsp.handlers')

  local flutter_tools = require 'flutter-tools'

  flutter_tools.setup({
    dev_log = {
      enabled = true,
      open_cmd = "tabedit", -- command to use to open the log buffer
    },

    lsp = {
      on_attach = function(_, bufnr)
        handlers.enable_format_on_save(_, bufnr)
        lsp_zero.default_keymaps({bufnr = bufnr})
      end,
      capabilities = cmp.default_capabilities(),

      settings = {
        renameFileWithClasses = "always",
      }
    },
  })
end

return M
