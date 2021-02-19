nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <F2> <Plug>(coc-rename)

vmap <silent><leader>a  <Plug>(coc-codeaction-selected)
nmap <silent><leader>a  viw<Plug>(coc-codeaction-selected)

inoremap <silent><expr> <c-space> coc#refresh()
"CocExplore
verbose nnoremap <Leader>e :CocCommand explorer --preset floating<CR>
verbose nnoremap <Leader><Leader> :execute 'CocCommand explorer ' getcwd()<CR>
nnoremap <Leader>r :execute 'CocCommand flutter.dev.hotRestart'<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

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

