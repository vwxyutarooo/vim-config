" autocomand

augroup VimGrep
  autocmd!
  autocmd QuickFixCmdPost *grep* cwindow
augroup END


augroup CursorLine
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter *.vue setlocal nocursorline
  " autocmd WinLeave * setlocal nocursorline
augroup END


augroup vimrc-checktime
  autocmd!
  autocmd WinEnter * checktime
augroup END



" indent-guides
autocmd VimEnter,Colorscheme * :highlight IndentGuidesOdd  guibg=grey26 guifg=grey22 ctermbg=black
autocmd VimEnter,Colorscheme * :highlight IndentGuidesEven guibg=grey30 guifg=grey22 ctermbg=darkgrey


" Emmet
autocmd FileType html,css,scss,styl,vue EmmetInstall
autocmd FileType html,css,scss,styl,vue map <expr> <tab> emmet#expandAbbrIntelligent('\<tab>')
