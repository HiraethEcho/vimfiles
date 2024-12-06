" My LaTex settings

" Only load this plugin it has not yet been loaded for this buffer
" Note that using b:did_ftplugin would disable vimtex
if exists("b:did_mytexplugin")
  finish
endif
let b:did_mytexplugin = 1

if empty(v:servername) && exists('*remote_startserver')
  call remote_startserver('VIM')
endif

let g:tex_flavor = 'latex'  " recognize tex files as latex

" Turn off automatic indenting in enumerated environments
let g:tex_indent_items=0

" Compilation
" noremap <leader>r <Cmd>update<CR><Cmd>VimtexCompileSS<CR>

" Write the line "TEX" to the file "/tmp/inverse-search-target.txt".
" I use the file  "/tmp/inverse-search-target.txt" as part of making inverse 
" search work for both LaTeX and Lilypond LyTeX files.
call system(printf("echo %s > %s", "TEX", "/tmp/inverse-search-target.txt"))

" BEGIN FORWARD SHOW
" ---------------------------------------------
" nmap <leader>v <plug>(vimtex-view)
" Linux forward search implementation

" Get Vim's window ID for switching focus from Zathura to Vim using xdotool.
" Only set this variable once for the current Vim instance.
if !exists("g:vim_window_id")
  let g:vim_window_id = system("xdotool getactivewindow")
endif

function! s:TexFocusVim(delay_ms) abort
  " Give window manager time to recognize focus 
  " moved to PDF viewer before focusing Vim.
  let delay = a:delay_ms . "m"
  execute 'sleep ' . delay
  execute "!xdotool windowfocus " . expand(g:vim_window_id)
  redraw!
endfunction

augroup vimtex_event_focus
  au!
  au User VimtexEventView call s:TexFocusVim(200)
  " Only gVim (and not Vim) loses focus on inverse search, hence the `gui_running` check
  if has("gui_running")
    au User VimtexEventViewReverse call s:TexFocusVim(0)
  endif
augroup END
" ---------------------------------------------
" END COMPILATION AND PDF READER SUPPORT
