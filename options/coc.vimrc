" [Global Options]
let g:coc_global_extensions = [
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

function! ShowDocumentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" [Auto Commands]
augroup coc-options
  autocmd!
  " Highlight the symbol and its references when holding the cursor.
  autocmd CursorHold * silent call CocActionAsync('highlight')
augroup END

augroup disable-sources
  autocmd!
  autocmd BufNewFile,BufRead,BufAdd * let b:coc_disabled_sources = ['around', 'buffer', 'yank']
augroup END


" [Key Mappings]
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> <leader>t :call ShowDocumentation()<CR>
nnoremap <silent> K :call ShowDocumentation()<CR>

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#coc#show_coc_status = 1

" Formatting selected code.
nmap <silent> <leader>p :CocCommand prettier.formatFile<CR>
xmap <leader>f <Plug>(coc-format-selected)<CR>
nmap <leader>f <Plug>(coc-format-selected)<CR>

nmap <silent> <leader>go :CocCommand git.browserOpen<CR>
nmap <silent> <leader>fix :CocFix<CR>
