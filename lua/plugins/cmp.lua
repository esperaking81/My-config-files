return {
  "nvim-cmp",
  dependencies = {
    {
      "L3MON4D3/LuaSnip",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load({ paths = "~/.config/nvim/snippets" })
        require("luasnip").config.setup()
      end,
    },
  },
  opts = function(_, opts)
    opts.snippet = {
      expand = function(args)
        require("luasnip").lsp_expand(args.body)
      end,
    }
    table.insert(opts.sources, { name = "luasnip" })
  end,
}
