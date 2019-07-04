" autocomand

augroup vim-grep
  autocmd!
  autocmd QuickFixCmdPost *grep* cwindow
augroup END


augroup cursor-line
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter *.vue setlocal nocursorline
augroup END


augroup vimrc-checktime
  autocmd!
  autocmd WinEnter * checktime
augroup END


augroup spell-check
  autocmd!
  autocmd FileType markdown setlocal spell
  autocmd FileType markdown set spelllang=en,cjk
augroup END

" Syntax
augroup jsx
  autocmd!
  autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END

augroup tsx
  autocmd!
  autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
augroup END

augroup set-html-syntax
  autocmd!
  autocmd BufNewFile,BufRead *.volt,*.twig set syntax=html | set filetype=html
augroup END

augroup set-json-syntax
  autocmd!
  autocmd BufNewFile,BufRead .*rc set syntax=json | set filetype=json
augroup END

" TypeScript
augroup ts-tooltip
  autocmd!
  autocmd FileType typescript,typescript.tsx nmap <buffer> <Leader>t :YcmCompleter GetType<CR>
augroup END


" indent-guides
augroup set-indent-color-scheme
  autocmd!
  autocmd VimEnter,Colorscheme * :highlight IndentGuidesOdd  guibg=grey26 guifg=grey22 ctermbg=black
  autocmd VimEnter,Colorscheme * :highlight IndentGuidesEven guibg=grey30 guifg=grey22 ctermbg=darkgrey
augroup END


" Emmet
augroup install-emmet
  autocmd!
  autocmd FileType html,css,scss,styl,vue,jsx,tsx EmmetInstall
  autocmd FileType html,css,scss,styl,vue,jsx,tsx map <expr> <tab> emmet#expandAbbrIntelligent('\<tab>')
  autocmd BufNewFile,BufRead *.jsx,*.tsx EmmetInstall | map <expr> <tab> emmet#expandAbbrIntelligent('\<tab>')
augroup END

" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  noremap <silent><buffer><expr> t
  \ denite#do_map('do_action', 'tabswitch')
  noremap <silent><buffer><expr> <C-v>
  \ denite#do_map('do_action', 'vsplitswitch')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction
