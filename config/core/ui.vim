" set background=light
set termguicolors
colorscheme nord


" cursor
" INSERT mode
let &t_SI = "\<Esc>[5 q"
" REPLACE mode
let &t_SR = "\<Esc>[3 q"
" NORMAL mode
let &t_EI = "\<Esc>[1 q"
" " 1 -> blinking block  闪烁的方块 "
" " 2 -> solid block  不闪烁的方块 "
" " 3 -> blinking underscore  闪烁的下划线 "
" " 4 -> solid underscore  不闪烁的下划线 "
" " 5 -> blinking vertical bar  闪烁的竖线 "
" " 6 -> solid vertical bar  不闪烁的竖线 "

" lists
set list
set listchars=eol:¬,trail:·,

" statusline
