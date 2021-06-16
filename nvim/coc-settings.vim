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
verbose nnoremap <Leader>s :CocCommand clangd.switchSourceHeader<CR>
verbose nnoremap <Leader>l :CocList symbols<CR>
verbose nnoremap <silent><Leader>F :Format<CR>
nnoremap <Leader>r :execute 'CocCommand flutter.dev.hotRestart'<CR>

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

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

autocmd Filetype dart nnoremap <F9> :CocCommand flutter.run<CR>
autocmd Filetype * set softtabstop=4 shiftwidth=4 tabstop=4
autocmd Filetype dart set softtabstop=2 shiftwidth=2 tabstop=2
autocmd Filetype yaml set softtabstop=2 shiftwidth=2 tabstop=2
autocmd Filetype cpp set softtabstop=2 shiftwidth=2 tabstop=2
autocmd Filetype c set softtabstop=2 shiftwidth=2 tabstop=2
autocmd Filetype rust nnoremap <F9> :CocCommand rust-analyzer.run<CR>
