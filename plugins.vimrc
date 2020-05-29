" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align


" Code helping
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-sleuth'
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {
      \ 'branch': 'release',
      \ 'do': ':CocInstall coc-emmet coc-eslint coc-stylelint coc-git coc-prettier coc-smartf coc-yank coc-python coc-tsserver coc-css coc-yaml coc-vetur coc-pairs coc-phpls'
      \ }
Plug 'heavenshell/vim-jsdoc'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-expand-region'

" Integration
Plug 'mattn/webapi-vim' " Depended by gist-vim
Plug 'mattn/gist-vim'

" Denite
if has('nvim')
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/denite.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Extend UI
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'

" Languages
Plug 'chase/vim-ansible-yaml'
Plug 'othree/yajs.vim'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'peitalin/vim-jsx-typescript'
Plug 'posva/vim-vue'
Plug 'othree/html5.vim'
Plug 'plasticboy/vim-markdown'
Plug 'jparise/vim-graphql'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'fatih/vim-go'

" Syntax
Plug 'tyrannicaltoucan/vim-quantum'


" Initialize plugin system
call plug#end()
