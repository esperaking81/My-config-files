return {
  "windwp/nvim-ts-autotag",
  ft = { "typescriptreact", "javascriptreact", "html", "tsx", "jsx", "vue" },
  config = function ()
    -- code
    require("nvim-ts-autotag").setup({
      autotag = {
        enable = true,
      }
    })
  end
}
