" autocomand
autocmd QuickFixCmdPost *grep* cwindow
augroup CursorLine
	autocmd!
	autocmd VimEnter,WinEnter,BufWinEnter *.vue setlocal nocursorline
	" autocmd WinLeave * setlocal nocursorline
augroup END

augroup vimrc-checktime
	autocmd!
	autocmd WinEnter * checktime
augroup END
