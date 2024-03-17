return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      separator_style = "padded_slope",
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          highlight = "Directory",
          separator = true,
        },
      },
      numbers = function(opts)
        return string.format("%s·%s", opts.raise(opts.id), opts.lower(opts.ordinal))
      end,
    },
  },
}
