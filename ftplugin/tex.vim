call plug#begin(expand("$XDG_CONFIG_HOME"). "/vim/plugged")
Plug 'lervag/vimtex'
call plug#end()

let g:tex_flavor = 'latex'      " 设置 Tex 文档是 LaTeX 语法风格的文档：
let g:vimtex_quickfix_mode = 0 " 设置不自动弹出报错窗口，可以通过 :copen 来手动打开
" 设置预览 PDF 的工具是 sumatra 阅读器
" let g:vimtex_view_general_viewer = 'SumatraPDF'
" let g:vimtex_view_general_viewer = 'sioyek'
" let g:vimtex_view_general_options='-reuse-instance -forward-search @tex @line @pdf'
" 设置 LaTeX 编译器
let g:vimtex_compiler_latexmk = {
      \ 'executable' : 'latexmk',
      \ 'options' : [
      \   '-xelatex',
      \   '-file-line-error',
      \   '-synctex=1',
      \   '-interaction=nonstopmode',
      \ ]
      \}
"     \ 'build_dir' : {-> 'out'},     
" 设置目录显示内容和显示宽度，并设置目录的自动刷新，设置后使用快捷键 \ +l+t (即敲入\lt)就可以打开目录。
let g:vimtex_toc_config = {
      \ 'name'         : 'TOC',
      \ 'layers'       : ['content', 'todo', 'include'],
      \ 'split_width'  : 30,
      \ 'todo_sorted'  : 0,
      \ 'show_help'    : 1,
      \ 'show_numbers' : 2,
      \}
" set foldmethod=expr
" set foldexpr=vimtex#fold#level(v:lnum)
" set foldtext=vimtex#fold#text()
" let g:vimtex_fold_enabled= 1
" let g:vimtex_fold_manual=0
" let g:vimtex_fold_levelmarker      =1
" let g:vimtex_fold_types            =1
" let g:vimtex_fold_types_defaults   =1
" let g:vimtex_fold_bib_enabled      =1
" let g:vimtex_fold_bib_max_key_width=1
