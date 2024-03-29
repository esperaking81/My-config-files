return {
  "akinsho/flutter-tools.nvim",
  config = function()
    local flutter_tools = require("flutter-tools")

    flutter_tools.setup({
      dev_log = {
        enabled = true,
        open_cmd = "tabedit", -- command to use to open the log buffer
      },

      lsp = {
        settings = {
          renameFileWithClasses = "always",
          analysisExcludedFolders = { "~/.pub-cache/hosted/pub.dev/" },
        },
      },
    })
  end,
  dependencies = {
    { "RobertBrunhage/flutter-riverpod-snippets" },
  },
}
