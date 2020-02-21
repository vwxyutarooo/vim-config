" Key maps
noremap <ESC><ESC> :noh<CR>
noremap <C-p> :FZF<CR>
noremap <C-j> :Files?<CR>

map Q <Nop>
map q <Nop>

" Smart way to move between windows
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-\> <C-w>x
map H gT
map L gt

" NERDTree
no <C-j> <C-w>j
no <C-k> <C-w>k
no <C-l> <C-w>l
no <C-h> <C-w>h
nnoremap <silent> <tab> :NERDTreeToggle<CR>

" Close bracket such as HTML tags
" iabbre  <// </<C-X><C-O>
imap <C-Space> <C-X><C-O>


if !exists("g:surround_no_mappings") || ! g:surround_no_mappings
  xmap s <Plug>VSurround
endif


" Denite
nmap <silent> <leader>j :Denite line<CR>
nmap <silent> <leader>g :Denite grep<CR>
nmap <silent> <leader>b :Denite buffer<CR>
nmap <silent> <expr> <leader>] ":DeniteCursorWord -winrow=" . CalcNextrow() . " grep <CR>"
nmap <silent> <leader>y :Denite neoyank<CR>


" COC
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> <leader>t :call ShowDocumentation()<CR>
nnoremap <silent> K :call ShowDocumentation()<CR>
" Prettier
nmap <silent> <leader>p :CocCommand prettier.formatFile<CR>
