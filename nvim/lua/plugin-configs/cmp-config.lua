local cmp = require 'cmp'
local completionWin = cmp.config.window.bordered();
completionWin.scrollbar = false;
cmp.setup({
    snippet = {
        expand = function(args)
            vim.snippet.expand(args.body)
        end,
    },
    window = {
        completion = completionWin,
        documentation = cmp.config.window.bordered({ max_width = 4 })
    },
    completion = {
        completeopt = 'menu,menuone,noinsert',
    },
    performance = {
        max_view_entries = 7,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
    }),
    formatting = {
        format = require("lspkind").cmp_format({
            mode = 'symbol',
            maxwidth = 60,
            ellipsis_char = '...',
            show_labelDetails = true,
        })
    },
})

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on(
    'confirm_done',
    cmp_autopairs.on_confirm_done()
)
