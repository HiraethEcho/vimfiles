call plug#begin(expand("$XDG_CONFIG_HOME"). "/vim/plugged")
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'machakann/vim-sandwich'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular' 
" Plug 'mbbill/undotree'
Plug 'Yggdroot/LeaderF'
" Plug 'gelguy/wilder.nvim'
" Plug 'easymotion/vim-easymotion'
" Plug 'preservim/nerdtree'
call plug#end()

"
" source $XDG_CONFIG_HOME/vim/config/utils.vim
source $XDG_CONFIG_HOME/vim/config/coc.vim
source $XDG_CONFIG_HOME/vim/config/file.vim
