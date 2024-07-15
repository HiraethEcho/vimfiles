call plug#begin(expand("$XDG_CONFIG_HOME"). "/vim/plugged")
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'}
call plug#end()
let g:vim_markdown_math = 1
let g:vmt_auto_update_on_save = 0
nnoremap <leader>mp <Plug>MarkdownPreviewToggle
