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
augroup syntax
  autocmd!
  autocmd BufEnter * :syntax sync fromstart
  autocmd FileType javascript syn sync ccomment javaScriptComment
  autocmd FileType html syn region javaScript start=+<script\_[^>]*>+ keepend end=+</script\_[^>]*>+me=s-1 contains=@htmlJavaScript,htmlCssStyleComment,htmlScriptTag,@htmlPreproc
augroup END

augroup set-html-syntax
  autocmd!
  autocmd BufNewFile,BufRead *.volt,*.twig set syntax=html | set filetype=html
augroup END

augroup set-json-syntax
  autocmd!
  autocmd BufNewFile,BufRead .*rc set syntax=json | set filetype=json
augroup END

" indent-guides
augroup set-indent-color-scheme
  autocmd!
  autocmd VimEnter,Colorscheme * :highlight IndentGuidesOdd  guibg=#2D373B
  autocmd VimEnter,Colorscheme * :highlight IndentGuidesEven guibg=#2D373B
augroup END
