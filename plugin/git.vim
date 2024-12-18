function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

noremap <leader>gl :<C-U><C-R>=printf("Leaderf git log %s", "")<CR><CR>
noremap <leader>gd :<C-U><C-R>=printf("Leaderf git diff %s", "")<CR><CR>
" noremap <leader>hD :<C-U><C-R>=printf("Leaderf git diff --side-by-side %s", "")<CR><CR>

noremap <leader>hj :GitGutterNextHunk<cr>
noremap <leader>hk :GitGutterPrevHunk<cr>
noremap <leader>hf :GitGutterFold<cr>
noremap <leader>hD :GitGutterOrig<cr>
noremap <leader>hh :GitGutterBufferToggle<cr>
noremap <leader>hl :GitGutterLineHighlightsToggle<cr>
noremap <leader>hu :GitGutterUndoHunk<cr>
