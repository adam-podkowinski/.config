nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <Leader>R <Plug>(coc-rename)

vmap <silent><leader>a  <Plug>(coc-codeaction-selected)
nmap <silent><leader>a  viw<Plug>(coc-codeaction-selected)
nmap <Leader>qf <Plug>(coc-fix-current)
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

inoremap <silent><expr> <c-space> coc#refresh()
"CocExplore
verbose nnoremap <Leader>e :CocCommand explorer --preset floating<CR>
verbose nnoremap <Leader><Leader> :execute 'CocCommand explorer ' getcwd()<CR>
verbose nnoremap <silent><Leader>f :Format<CR>
nnoremap <Leader>r :execute 'CocCommand flutter.dev.hotRestart'<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

let g:coc_explorer_global_presets = {
\   '.vim': {
\      'root-uri': '~/.vim',
\   },
\   'floating': {
\      'position': 'floating',
\   }
\ }

"Coc mappings and tab out
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>":
      \ search('\%#[]>)}''"`]', 'n') ? '<Right>' : '<Tab>'

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

autocmd Filetype dart nnoremap <F9> :CocCommand flutter.run<CR>
autocmd Filetype rust nnoremap <F9> :CocCommand rust-analyzer.run<CR>

