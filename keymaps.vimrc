" Key maps
noremap <ESC><ESC> :noh<ENTER>
noremap <C-p> :FZF<ENTER>
noremap <C-j> :Files?<ENTER>

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


noremap <leader>jd :tab YcmCompleter GoTo <ENTER>
noremap <leader>gd :ALEGoToDefinitionInTab <ENTER>

" Denite
nmap <silent> <leader>j :Denite line<CR>
nmap <silent> <leader>g :Denite grep<CR>
nmap <silent> <leader>b :Denite buffer<CR>
nmap <silent> <leader>] :DeniteCursorWord grep<CR>
nmap <silent> <leader>y :Denite neoyank<CR>

call denite#custom#var('file/rec', 'command', ['pt', '--follow', '--nogroup', '-g', ''])
call denite#custom#var('grep', 'command', ['pt', '--nogroup', '--smart-case', '--hidden'])
call denite#custom#var('grep', 'default_opts', [])
call denite#custom#var('grep', 'recursive_opts', [])
