" NERDTree
" https://github.com/ryanoasis/vim-devicons/issues/250
highlight! link NERDTreeFlags NERDTreeDir
let g:nerdtree_tabs_synchronize_view = 0
let g:nerdtree_tabs_synchronize_focus = 0
let g:nerdtree_tabs_focus_on_files = 1
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.DS_Store', '\.git$', 'node_modules$']
let NERDTreeMapQuit = "Q"
let NERDTreeQuitOnOpen=1


" NERDCommenter
let g:NERDSpaceDelims = 1

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


" devicons
if (has("guifont"))
  set guifont=SauceCodePro\ Nerd\ Font:h12
endif
" let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1


" NERDTree
no <C-j> <C-w>j
no <C-k> <C-w>k
no <C-l> <C-w>l
no <C-h> <C-w>h
nnoremap <silent> <C-i> :NERDTreeToggle<CR>
