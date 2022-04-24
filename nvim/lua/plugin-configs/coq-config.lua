require('lspkind').init({
  mode = 'symbol',
})

vim.g.coq_settings = {
  auto_start = 'shut-up',
  keymap = {
    pre_select = true
  },
  display = {
    pum = {
      fast_close = false
    },
    ghost_text = { enabled = false },
    icons = { mode = 'short' }
  }
}
