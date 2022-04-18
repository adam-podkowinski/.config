require('tabout').setup {
  backwards_tabkey = '', -- key to trigger backwards tabout, set to an empty string to disable
  enable_backwards = false, -- well ...
  tabouts = {
    {open = "'", close = "'"},
    {open = '"', close = '"'},
    {open = '`', close = '`'},
    {open = '(', close = ')'},
    {open = '[', close = ']'},
    {open = '{', close = '}'}
  },
  ignore_beginning = true
}
