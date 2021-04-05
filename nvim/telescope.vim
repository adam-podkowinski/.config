"let g:fzf_action = {
"	\ 'ctrl-t': 'tab split',
"	\ 'ctrl-x': 'split',
"	\ 'ctrl-v': 'vsplit' }
"let g:fzf_history_dir = '~/.local/share/fzf-history'
"
""let g:fzf_preview_window = ''
"
"nnoremap <leader>f :Files<CR>
"nnoremap <leader>b :Buffers<CR>
"nnoremap <leader>g :Rg<CR>
"nnoremap <leader>t :Tags<CR>
"nnoremap <leader>m :Marks<CR>
"
"let g:fzf_tags_command = 'ctags -R'
"" Border color
"let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }
"
"let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
"let $FZF_DEFAULT_COMMAND="rg --files --hidden -g \"\!.git\""
"
"command! -bang -nargs=? -complete=dir Files
"    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', 'cat {}']}, <bang>0)

nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
