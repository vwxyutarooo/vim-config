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


augroup devicons_nerdtree
	autocmd FileType nerdtree setlocal list
	autocmd FileType nerdtree setlocal listchars=space:.
	autocmd FileType nerdtree setlocal nolist
augroup END
