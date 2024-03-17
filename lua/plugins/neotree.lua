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
}
