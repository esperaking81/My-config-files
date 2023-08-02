local M = {
  'VonHeikemen/lsp-zero.nvim',
  dependencies = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},
    {
     'tzachar/cmp-tabnine',
     build = './install.sh',
      dependencies = 'hrsh7th/nvim-cmp',
    },

    -- Snippets
    {'L3MON4D3/LuaSnip'},
    {'rafamadriz/friendly-snippets'},
  }
}

function M.config()
    local lsp  = require("lsp-zero")
    lsp.preset({
      name = "recommended",
      manage_luasnip = true,
    })

    local cmp = require('cmp')
    cmp.setup {
        sources = {
            { name = 'cmp_tabnine' },
        },
    }

    local cmp_select = {behavior = cmp.SelectBehavior.Select}
    local cmp_mappings = lsp.defaults.cmp_mappings({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
    })

    lsp.setup_nvim_cmp({
        mapping = cmp_mappings
    })

    lsp.on_attach(function(client, bufnr)
        local handlers = require('iamespera.lsp.handlers')

        handlers.on_attach(_, bufnr)
        handlers.enable_format_on_save(_, bufnr)
    end)

    lsp.setup()
end

return M
