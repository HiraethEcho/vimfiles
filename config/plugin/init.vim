call plug#begin(expand("$XDG_CONFIG_HOME"). "/vim/plugged")
Plug 'lervag/vimtex'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'machakann/vim-sandwich'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular' 
Plug 'mbbill/undotree'
Plug 'Yggdroot/LeaderF'
" Plug 'gelguy/wilder.nvim'
Plug 'easymotion/vim-easymotion'
Plug 'wellle/targets.vim'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install'}
call plug#end()

" wilder, undotree
" source $XDG_CONFIG_HOME/vim/config/utils.vim
" coc completement, lsp etc
source $XDG_CONFIG_HOME/vim/config/plugin/coc.vim
" coc-explorer, leaderF, sessions
source $XDG_CONFIG_HOME/vim/config/plugin/file.vim
" easymotion
source $XDG_CONFIG_HOME/vim/config/plugin/motion.vim
" comment, sandwicn
source $XDG_CONFIG_HOME/vim/config/plugin/edit.vim
" gitgutter
source $XDG_CONFIG_HOME/vim/config/plugin/git.vim
