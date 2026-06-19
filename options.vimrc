source ~/.config/nvim/options/coc.default.vimrc
source ~/.config/nvim/options/coc.vimrc
source ~/.config/nvim/options/nerdcommenter.vimrc
lua require('config.nvim-tree')
lua require('config.lualine')
lua require('config.treesitter')
lua require('config.telescope')


" Disable syntax-based conceal for json/markdown
let g:vim_json_conceal = 0
let g:markdown_syntax_conceal = 0


" GUI font (Nerd Font for icon glyphs in GUI clients)
if (has("guifont"))
  set guifont=SauceCodePro\ Nerd\ Font:h12
endif
