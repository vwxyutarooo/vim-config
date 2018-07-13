" autocomand

augroup vim-grep
  autocmd!
  autocmd QuickFixCmdPost *grep* cwindow
augroup END


augroup cursor-line
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter *.vue setlocal nocursorline
  " autocmd WinLeave * setlocal nocursorline
augroup END


augroup vimrc-checktime
  autocmd!
  autocmd WinEnter * checktime
augroup END


" TypeScript
augroup ts-tooltip
  autocmd!
  autocmd FileType typescript nmap <buffer> <Leader>t :ALEHover<CR>
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


augroup set-html-syntax
  autocmd!
  autocmd BufNewFile,BufRead *.volt,*.twig set syntax=html | set filetype=html
augroup END


augroup set-json-syntax
  autocmd!
  autocmd BufNewFile,BufRead .*rc set syntax=json | set filetype=json
augroup END
