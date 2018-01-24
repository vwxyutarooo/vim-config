set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
" Code helping
Plugin 'valloric/youcompleteme'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'mileszs/ack.vim'
" Plugin 'eugen0329/vim-esearch'
Plugin 'vwxyutarooo/vim-esearch'
Plugin 'scrooloose/nerdcommenter'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mattn/emmet-vim'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-eunuch'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ternjs/tern_for_vim'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-surround'
Plugin 'moll/vim-node'
Plugin 'terryma/vim-expand-region'

" Integration
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'

" Extend UI
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-airline/vim-airline'
Plugin 'ryanoasis/vim-devicons'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'majutsushi/tagbar'
Plugin 'vwxyutarooo/vim-nerdtree-syntax-highlight'

" Languages
Plugin 'othree/yajs.vim'
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'posva/vim-vue'
Plugin 'Quramy/tsuquyomi'
Plugin 'Quramy/tsuquyomi-vue'
Plugin 'othree/html5.vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'wavded/vim-stylus'
Plugin 'plasticboy/vim-markdown'

" Syntax
Plugin 'mhartington/oceanic-next'
Plugin 'tyrannicaltoucan/vim-quantum'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
