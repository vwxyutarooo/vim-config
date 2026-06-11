source ~/.config/nvim/options/coc.default.vimrc
source ~/.config/nvim/options/coc.vimrc
source ~/.config/nvim/options/nerdcommenter.vimrc
lua require('config.nvim-tree')
lua require('config.lualine')
lua require('config.treesitter')

if has("nvim")
  lua require('config.telescope')
else
  source ~/.config/nvim/options/fzf.vimrc
endif


" Disable syntax-based conceal for json/markdown
let g:vim_json_conceal = 0
let g:markdown_syntax_conceal = 0


" vim-vue
let g:vue_disable_pre_processors = 1


" GUI font (Nerd Font for icon glyphs in GUI clients)
if (has("guifont"))
  set guifont=SauceCodePro\ Nerd\ Font:h12
endif
