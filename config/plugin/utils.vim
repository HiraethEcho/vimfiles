" wilder
call wilder#setup({'modes': [':', '/', '?']})

call wilder#setup({
       \ 'modes': [':', '/', '?'],
       \ 'next_key': '<Tab>',
       \ 'previous_key': '<S-Tab>',
       \ 'accept_key': '<Down>',
       \ 'reject_key': '<Up>',
       \ })
call wilder#set_option('renderer', wilder#renderer_mux({
       \ ':': wilder#popupmenu_renderer(),
       \ '/': wilder#wildmenu_renderer(),
       \ }))
" undotree
let g:undotree_WindowLayout=2
nnoremap U :UndotreeToggle<cr>

" WhichKey
"" By default timeoutlen is 1000 ms
set timeoutlen=500
let g:mapleader = "\<Space>"
let g:maplocalleader = '\'
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  '\'<CR>

let g:which_key_map = {}
let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 's' : ['<C-W>s'     , 'split-window-below']    ,
      \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
      \ '?' : ['Windows'    , 'fzf-window']            ,
      \ }

call which_key#register('<Space>', "g:which_key_map")
" startify
"
let g:startify_files_number = 3

let g:startify_lists = [
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]
