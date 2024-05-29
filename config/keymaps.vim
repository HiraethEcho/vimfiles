let mapleader=" "

nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <F5> : w<CR> :source $MYVIMRC<CR>
nnoremap <F4> : PlugInstall<CR>
nnoremap <C-s>    :w<CR>

vnoremap D "_d
nnoremap D "_d
nnoremap DD V"_d
nnoremap x "_x
vnoremap x "_x

nnoremap <silent> k gk
nnoremap <silent> j gj

nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $

nnoremap <M-up> :res +5<CR>
nnoremap <M-down> :res -5<CR>
nnoremap <M-left> :vertical resize-5<CR>
nnoremap <M-right> :vertical resize+5<CR>

nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j

nnoremap <C-L> <C-w>L
nnoremap <C-K> <C-w>K
nnoremap <C-H> <C-w>H
nnoremap <C-J> <C-w>J
nnoremap <C-n> <C-W>T

nnoremap <C-t> <Esc>:tabnew<CR>

" === command mode=====
nnoremap ; :
vnoremap ; :
