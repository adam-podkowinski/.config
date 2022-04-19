--local lspkind_comparator = function(conf)
--  local lsp_types = require('cmp.types').lsp
--  return function(entry1, entry2)
--    if entry1.source.name ~= 'nvim_lsp' then
--      if entry2.source.name == 'nvim_lsp' then
--        return false
--      else
--        return nil
--      end
--    end
--    local kind1 = lsp_types.CompletionItemKind[entry1:get_kind()]
--    local kind2 = lsp_types.CompletionItemKind[entry2:get_kind()]
--
--    local priority1 = conf.kind_priority[kind1] or 0
--    local priority2 = conf.kind_priority[kind2] or 0
--    if priority1 == priority2 then
--      return nil
--    end
--    return priority2 < priority1
--  end
--end
--
--local label_comparator = function(entry1, entry2)
--  return entry1.completion_item.label < entry2.completion_item.label
--end

local feedkey = function(key, mode)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

local cmp = require 'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif vim.api.nvim_eval(vim.api.nvim_exec("echo search('\\%#[]>)}''\"`,]', 'n')", true)) > 0 then
        feedkey("<Right>", "")
      else
        fallback()
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
    { name = 'vsnip' },
    { name = 'buffer' },
    { name = 'cmdline' },
    { name = 'path' }
  }),
  formatting = {
    format = require('lspkind').cmp_format({ mode = 'symbol_text' })
  },
  --  sorting = {
  --    comparators = {
  --      lspkind_comparator({
  --        kind_priority = {
  --          Snippet = -1,
  --        },
  --      }),
  --      label_comparator,
  --    },
  --  },
})
