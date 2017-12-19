" vim-multiple-cursors
" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
	try
		let s:old_ycm_whitelist = g:ycm_filetype_whitelist
		let g:ycm_filetype_whitelist = {}
		"call youcompleteme#DisableCursorMovedAutocommands()
		"call deoplete#init#_disable()
	catch
		echo 'Failed to disable deoplete which may not available.'
	endtry
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
	try
		let g:ycm_filetype_whitelist = s:old_ycm_whitelist
		"call youcompleteme#EnableCursorMovedAutocommands()
		"call deoplete#init#_enable()
	catch
		echo 'Failed to enable deoplete which may not available.'
	endtry
endfunction


" NERDCommenter
" https://github.com/posva/vim-vue#how-can-i-use-nerdcommenter-in-vue-files
let g:ft = ''
function! NERDCommenter_before()
	if &ft == 'vue'
		let g:ft = 'vue'
		let stack = synstack(line('.'), col('.'))
		if len(stack) > 0
			let syn = synIDattr((stack)[0], 'name')
			if len(syn) > 0
				exe 'setf ' . substitute(tolower(syn), '^vue_', '', '')
			endif
		endif
	endif
endfunction
function! NERDCommenter_after()
	if g:ft == 'vue'
		setf vue
		let g:ft = ''
	endif
endfunction