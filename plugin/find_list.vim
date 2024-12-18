" leaderF
let g:Lf_WorkingDirectoryMode = 'Ac'
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PopupBorders = ["─","│","─","│","╭","╮","╯","╰"]
    " let g:Lf_PopupBorders = ["─","│","─","│","╭","╮","╯","╰"]
    " let g:Lf_PopupBorders = ["─","│","─","│","┌","┐","┘","└"]
    " let g:Lf_PopupBorders = ["━","┃","━","┃","┏","┓","┛","┗"]
    " let g:Lf_PopupBorders = ["═","║","═","║","╔","╗","╝","╚"]
let g:Lf_QuickSelectAction = 'h'

let g:Lf_NormalMap = {
    \ "_":      [["<C-j>", "j"],
    \            ["<C-k>", "k"],
    \           ],
    \ "File":   [["<ESC>", ':exec g:Lf_py "fileExplManager.quit()"<CR>'],
    \            ["<F6>", ':exec g:Lf_py "fileExplManager.quit()"<CR>']
    \           ],
    \ "Buffer": [["<ESC>", ':exec g:Lf_py "bufExplManager.quit()"<CR>'],
    \            ["<F6>", ':exec g:Lf_py "bufExplManager.quit()"<CR>']
    \           ],
    \ "Mru":    [["<ESC>", ':exec g:Lf_py "mruExplManager.quit()"<CR>']],
    \}



" let g:Lf_ShortcutF = "<leader>ff"
let g:Lf_WindowPosition = "bottom"
let g:LF_DefaultMode = 'Fuzzy'
noremap <leader>ff :Leaderf file<CR>
noremap <leader>b :Leaderf buffer<CR>
noremap <leader>fh :Leaderf mru<CR>
noremap <leader>j :Leaderf jumps<CR>
noremap <leader>iq :Leaderf quickfix<CR>

" noremap <leader>/ :<C-U>Leaderf rg --current-buffer<CR>
noremap <leader>/ :Leaderf rg<CR>

" search visually selected text literally
" xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
" noremap go :<C-U>Leaderf! rg --recall<CR>

noremap <leader>ih :Leaderf help<CR>
