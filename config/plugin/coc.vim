let g:coc_global_extensions=['coc-snippets','coc-json', 'coc-marketplace','coc-lists','coc-pairs', 'coc-explorer']
" let g:coc_node_path = 'D:\Program\scoop\apps\nodejs\current\node.exe'
"
inoremap <silent><expr> <tab>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <C-o> coc#refresh()
vnoremap <BS> <Plug>(coc-snippets-select)

"diagnostics.
nnoremap <silent><nowait> <leader>id : <C-u>CocList diagnostics<cr>
nnoremap <silent> [g <Plug>(coc-diagnostic-prev)
nnoremap <silent> ]g <Plug>(coc-diagnostic-next)

" motion
nnoremap <silent><nowait> <leader>o : <C-u>CocList outline<cr>

" enhance natives
nnoremap <silent><nowait> <leader>: : <C-u>CocList --normal commands<cr>
nnoremap <silent><nowait> <leader>" :<c-u>CocList registers<CR>
nnoremap <silent><nowait> <leader>' :<c-u>CocList markers<CR>
nnoremap <silent><nowait> <leader>ih :<c-u>CocList helptags<CR>

" Resume latest coc list.
" nnoremap <silent><nowait> <leader>ll : <C-u>CocListResume<CR>

" lists
nnoremap <silent><nowait> <leader>ll :<c-u>CocList lists<CR>
nnoremap <silent><nowait> <leader>le : <C-u>CocList extensions<cr>
