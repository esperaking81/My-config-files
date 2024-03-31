return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    close_if_last_window = false,
    filesystem = {
      filtered_items = {
        hide_dotfiles = true,
        hide_gitignored = true,
        hide_by_pattern = {
          "**.freezed.dart",
          "**.g.dart",
          "**.gr.dart",
          "**/generated_plugin_registrant.dart",
        },
      },
    },
  },
  config = function()
    require("neo-tree").setup({
      window = {
        width = 30,
      },
      event_handlers = {
        {
          event = "file_opened",
          handler = function(file_path)
            --auto close
            require("neo-tree.command").execute({ action = "close" })
          end,
        },
      },
    })
  end,
}
