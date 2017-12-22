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

