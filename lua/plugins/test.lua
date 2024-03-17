local opts = { noremap = false, silent = true }

return {
  "nvim-neotest/neotest",
  dependencies = {
    { "sidlatau/neotest-dart" },
  },
  keys = {
    {
      "<C-t>",
      function()
        local neotest = require("neotest")
        neotest.run.run()
      end,
      desc = "Run nearest test",
      opts,
    },
    {
      "<S-t>",
      function()
        local neotest = require("neotest")
        neotest.run.run(vim.fn.expand("%"))
      end,
      desc = "Run all tests in file",
      opts,
    },
    {
      "<leader>wt",
      function()
        local neotest = require("neotest")
        neotest.watch()
      end,
      desc = "Watch files related to tests for changes and re-run tests",
      opts,
    },
  },
  opts = function(_, opts)
    vim.list_extend(opts.adapters, {
      require("neotest-dart")({ command = "flutter" }),
    })
  end,
}
