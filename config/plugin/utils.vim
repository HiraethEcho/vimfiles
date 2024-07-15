" wilder
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
