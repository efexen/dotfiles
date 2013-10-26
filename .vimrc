set nocompatible

color molokai
let g:molokai_original = 1

" Learn to use vim properly. you muppet
nnoremap <Left> :echoe "Use h. you muppet"<CR>
nnoremap <Right> :echoe "Use l. you muppet"<CR>
nnoremap <Up> :echoe "Use k. you muppet"<CR>
nnoremap <Down> :echoe "Use j. you muppet"<CR>

set list listchars=tab:»·,trail:·
set scrolloff=8

set hidden
set nowrap

set tabstop=2
set shiftwidth=2
set autoindent
set copyindent
set shiftround
set smarttab
set expandtab

set number
set ruler

set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch

set nobackup
set nowritebackup
set noswapfile

set history=500
set showcmd
set laststatus=2
set backspace=indent,eol,start

syntax on

" Plugin stuffs "
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" fuzzy searching "
Bundle 'kien/ctrlp.vim'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" File Nav "
Bundle 'scrooloose/nerdtree'

" Silver searcher "
Bundle 'rking/ag.vim'
set grepprg=ag\ --nogroup\ --nocolor
map <Leader>s :Ag ''<Left>

" tab completion "
Bundle 'ervandew/supertab'

" syntax checker '
Bundle 'scrooloose/syntastic'

" Git "
Bundle 'tpope/vim-fugitive'

" Rails "
Bundle 'tpope/vim-rails'

" Google music control <3 "
Bundle 'bassnode/vim-google-play'

filetype plugin indent on
