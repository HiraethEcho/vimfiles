
let g:coc_global_extensions=['coc-snippets','coc-json', 'coc-marketplace','coc-lists','coc-pairs']
" let g:coc_node_path = 'D:\Program\scoop\apps\nodejs\current\node.exe'
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nnoremap <silent> [g <Plug>(coc-diagnostic-prev)
nnoremap <silent> ]g <Plug>(coc-diagnostic-next)

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

" Show all diagnostics.
nnoremap <silent><nowait> <leader>la : <C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <leader>le : <C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <leader>lc : <C-u>CocList --normal commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <leader>lo : <C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <leader>ls : <C-u>CocList -I symbols<cr>
" Resume latest coc list.
nnoremap <silent><nowait> <leader>ll : <C-u>CocListResume<CR>
" Show Typos
nnoremap <silent><nowait> <leader>lt : <c-u>CocList typos<CR>
" Show registers
nnoremap <silent><nowait> <leader>lr :<c-u>CocList registers<CR>
" show yank list
nnoremap <silent><nowait> <leader>li :<C-u>CocList yank<cr>
" Show all lists
nnoremap <silent><nowait> <leader>ll :<c-u>CocList lists<CR>
