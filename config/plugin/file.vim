" Coc explorer 
nnoremap <silent><nowait> <leader>e : <C-u>CocCommand explorer<cr>

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



let g:Lf_ShortcutF = "<leader>ff"
noremap <leader>b :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>j :<C-U><C-R>=printf("Leaderf jumps %s", "")<CR><CR>
noremap <leader>fq :<C-U><C-R>=printf("Leaderf quickfix %s", "")<CR><CR>

noremap <leader>/ :<C-U>Leaderf rg --current-buffer<CR>
noremap <leader>? :<C-U>Leaderf rg<CR>

" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>

" should use `Leaderf gtags --update` first
" let g:Lf_GtagsAutoGenerate = 0
" let g:Lf_Gtagslabel = 'native-pygments'
" noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
" noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>

" noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
" noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
" noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>

noremap <leader>ih :<C-U><C-R>=printf("Leaderf help %s", "")<CR><CR>
" session
