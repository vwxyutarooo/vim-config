source ~/.config/nvim/options/coc.default.vimrc
source ~/.config/nvim/options/coc.vimrc
source ~/.config/nvim/options/nerd.vimrc
source ~/.config/nvim/options/airline.vimrc
source ~/.config/nvim/options/treesitter.vimrc

if has("nvim")
  source ~/.config/nvim/options/telescope.vimrc
else
  source ~/.config/nvim/options/fzf.vimrc
endif


" indentLine
let g:vim_json_conceal = 0
let g:markdown_syntax_conceal = 0


" markdown
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = [
  \ 'c++=cpp',
  \ 'viml=vim',
  \ 'bash=sh',
  \ 'ini=dosini',
  \ 'js=javascript',
  \ 'ts=typescript'
\ ]


" vim-vue
let g:vue_disable_pre_processors = 1
