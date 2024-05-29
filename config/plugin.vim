call plug#begin('~/vimfiles/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'machakann/vim-sandwich'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular' 
" Plug 'mbbill/undotree'
Plug 'Yggdroot/LeaderF'
Plug 'gelguy/wilder.nvim'
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
call plug#end()
" Default keys
"
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
