local feedkey = function(key, mode)
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

local cmp = require 'cmp'
cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    completion = {
        completeopt = 'menu,menuone,noinsert',
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = function(fallback)
            if vim.api.nvim_eval(vim.api.nvim_exec("echo search('\\%#[]>)}''\"`,]', 'n')", true)) > 0 then
                feedkey("<Right>", "")
            else
                fallback();
            end
        end,
        ["<S-Tab>"] = function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end,
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },       -- For luasnip users.
    }),
    -- sorting = {
    --   priority_weight = 1.0,
    --   comparators = {
    --     cmp.config.compare.locality,
    --     cmp.config.compare.exact,
    --     cmp.config.compare.recently_used,
    --     cmp.config.compare.score,
    --     cmp.config.compare.offset,
    --     cmp.config.compare.order,
    --   }
    -- },
    formatting = {
        fields = { "kind", "abbr", "menu" },
        format = function(entry, vim_item)
            local kind = require("lspkind").cmp_format({ mode = "symbol", maxwidth = 50 })(entry, vim_item)
            local strings = vim.split(kind.kind, "%s", { trimempty = true })
            kind.kind = " " .. (strings[1] or "") .. " "
            return kind
        end,
    },
})
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on(
    'confirm_done',
    cmp_autopairs.on_confirm_done()
)
