" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align


" Code helping
Plug 'valloric/youcompleteme', { 'do': 'python3 ./install.py --js-completer' }
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'mileszs/ack.vim'
Plug 'eugen0329/vim-esearch'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-sleuth'
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-eunuch'
Plug 'heavenshell/vim-jsdoc'
Plug 'jiangmiao/auto-pairs'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'godlygeek/tabular'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-expand-region'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
Plug 'vwxyutarooo/vim-fuzzy-cursorline'

" Integration
Plug 'mattn/webapi-vim' " Depended by gist-vim
Plug 'mattn/gist-vim'

" Extend UI
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'majutsushi/tagbar'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'

" Languages
Plug 'chase/vim-ansible-yaml'
Plug 'othree/yajs.vim'
" Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'MaxMEllon/vim-jsx-pretty'
" Plug 'peitalin/vim-jsx-typescript'
Plug 'posva/vim-vue'
Plug 'othree/html5.vim'
Plug 'digitaltoad/vim-pug'
Plug 'plasticboy/vim-markdown'
Plug 'jparise/vim-graphql'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Syntax
Plug 'tyrannicaltoucan/vim-quantum'


" Initialize plugin system
call plug#end()
