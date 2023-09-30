return {
    "svrana/neosolarized.nvim",
    dependencies = {
        "tjdevries/colorbuddy.nvim",
    },
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
        require("neosolarized").setup({
            comment_italics = true,
            background_set = false,
        })
    end,
}
