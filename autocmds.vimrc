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

" Force conceallevel=0 — it's window-local, so re-apply per window so no
" plugin (indentLine, treesitter conceal queries, etc.) can override it.
" Markdown is exempt; it's handled by the markdown-conceal group below.
augroup force-conceallevel
  autocmd!
  autocmd FileType,BufWinEnter * if &filetype !=# 'markdown' | setlocal conceallevel=0 | endif
augroup END

" Markdown: conceal markup in normal mode (clean view), reveal raw syntax
" while editing (insert mode).
augroup markdown-conceal
  autocmd!
  autocmd FileType markdown setlocal conceallevel=1 concealcursor=
  autocmd FileType markdown autocmd InsertEnter <buffer> setlocal conceallevel=0
  autocmd FileType markdown autocmd InsertLeave <buffer> setlocal conceallevel=1
augroup END

" indent-guides
augroup set-indent-color-scheme
  autocmd!
  autocmd VimEnter,Colorscheme * :highlight IndentGuidesOdd  guibg=#2D373B
  autocmd VimEnter,Colorscheme * :highlight IndentGuidesEven guibg=#2D373B
augroup END
