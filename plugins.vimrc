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

" Integration
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
"Plugin 'tpope/vim-fugitive'

" Extend UI
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-airline/vim-airline'
Plugin 'ryanoasis/vim-devicons'
Plugin 'airblade/vim-gitgutter'
Plugin 'Yggdroot/indentLine'
Plugin 'majutsushi/tagbar'

" Languages
Plugin 'pangloss/vim-javascript'
Plugin 'posva/vim-vue'
Plugin 'digitaltoad/vim-pug'
Plugin 'leafgarland/typescript-vim'
Plugin 'wavded/vim-stylus'
Plugin 'mxw/vim-jsx'
Plugin 'plasticboy/vim-markdown'

" Syntax
Plugin 'mhartington/oceanic-next'
Plugin 'w0ng/vim-hybrid'
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
