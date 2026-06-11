source ~/.config/nvim/options/coc.default.vimrc
source ~/.config/nvim/options/coc.vimrc
source ~/.config/nvim/options/nerdcommenter.vimrc
source ~/.config/nvim/options/treesitter.vimrc

if has("nvim")
  source ~/.config/nvim/options/telescope.vimrc
else
  source ~/.config/nvim/options/fzf.vimrc
endif


" Disable syntax-based conceal for json/markdown
let g:vim_json_conceal = 0
let g:markdown_syntax_conceal = 0


" vim-vue
let g:vue_disable_pre_processors = 1


" devicons
if (has("guifont"))
  set guifont=SauceCodePro\ Nerd\ Font:h12
endif
" let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
