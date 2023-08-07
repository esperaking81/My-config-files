local M = {
    "nvim-neotest/neotest",
    dependencies = {
        'sidlatau/neotest-dart',
    },
}

local opts = { noremap = false, silent = true }
M.keys = {
    { 
        "<C-t>", 
        function()
local neotest = require "neotest"
            neotest.run.run()
        end, 
        desc = "Run nearest test", 
        opts 
    },
    { 
        "<S-t>", 
        function()
local neotest = require "neotest"
            neotest.run.run(vim.fn.expand('%'))
        end, 
        desc = "Run all tests in file", opts, 
    },
    { 
        "<leader>wt", 
        function()
local neotest = require "neotest"
            neotest.watch()
        end,
        desc = "Watch files related to tests for changes and re-run tests",
        opts
    },
}

local function config_test()
  require('neotest').setup({
      adapters = {
        require('neotest-dart') {
             command = 'flutter', -- Command being used to run tests. Defaults to `flutter`
                                  -- Change it to `fvm flutter` if using FVM
                                  -- change it to `dart` for Dart only tests
             use_lsp = true       -- When set Flutter outline information is used when constructing test name.
          },
      }
    })
end

M.config = function()
   config_test()
end

return M
