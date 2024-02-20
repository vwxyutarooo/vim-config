" [Global Options]
let g:coc_global_extensions = [
      \ 'coc-json',
      \ 'coc-emmet',
      \ 'coc-eslint',
      \ 'coc-stylelint',
      \ 'coc-git',
      \ 'coc-prettier',
      \ 'coc-yank',
      \ 'coc-python',
      \ 'coc-tsserver',
      \ 'coc-css',
      \ 'coc-yaml',
      \ 'coc-pairs',
      \ 'coc-phpls',
      \ 'coc-highlight'
      \ ]

let g:coc_node_path = system('echo -n $(which node)')

" [Auto Commands]
" augroup coc-options
  " autocmd!
  " Highlight the symbol and its references when holding the cursor.
  " autocmd CursorHold * silent call CocActionAsync('highlight')
" augroup END

augroup disable-sources
  autocmd!
  autocmd BufNewFile,BufRead,BufAdd * let b:coc_disabled_sources = ['around', 'buffer', 'yank']
augroup END

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
" if exists('*complete_info')
  " inoremap <expr> <cr> complete_info()["selected"] != '-1' ? '\<C-y>' : '\<C-g>u\<CR>'
" else
  " inoremap <expr> <cr> pumvisible() ? '\<C-y>' : '\<C-g>u\<CR>'
" endif"

let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#coc#show_coc_status = 1

" Formatting selected code.
nmap <silent> <leader>p :CocCommand prettier.formatFile<CR>

" git
nmap <silent> <leader>go :CocCommand git.browserOpen<CR>
