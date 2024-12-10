call plug#begin(expand("$HOME"). "/vimfiles/plugged")
" Plug 'lervag/vimtex', {'for':[ 'tex' , 'bib' ]}
Plug 'lervag/vimtex'
Plug 'neoclide/coc.nvim', {'branch':'release'}
" Plug 'airblade/vim-gitgutter', {'on':'GitGutter'}
Plug 'airblade/vim-gitgutter',
Plug 'machakann/vim-sandwich'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular' 
Plug 'mbbill/undotree'
Plug 'Yggdroot/LeaderF'
Plug 'gelguy/wilder.nvim'
Plug 'easymotion/vim-easymotion'
Plug 'wellle/targets.vim'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install'}
" Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'liuchengxu/vim-which-key'
call plug#end()

" wilder, undotree, WhichKey
source $HOME/vimfiles/config/plugin/utils.vim
" coc completement, lsp etc
source $HOME/vimfiles/config/plugin/coc.vim
" coc-explorer, leaderF, sessions
source $HOME/vimfiles/config/plugin/file.vim
" easymotion
" source $HOME/vimfiles/config/plugin/motion.vim
" comment, sandwicn
" source $HOME/vimfiles/config/plugin/edit.vim
" gitgutter
source $HOME/vimfiles/config/plugin/git.vim
" source $HOME/vimfiles/config/plugin/vimtex.vim
