set nocompatible

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

set splitbelow
set splitright

syntax on

" Plugin stuffs "
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/vundle'

Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'rking/ag.vim'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'bassnode/vim-google-play'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-endwise'
Plugin 'chriskempson/base16-vim'
Plugin 'scrooloose/nerdcommenter.git'

Plugin 'elixir-lang/vim-elixir'

set grepprg=ag\ --nogroup\ --nocolor
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0
map <Leader>s :Ag ''<Left>

map <C-S-t> :tabnew<CR>

call vundle#end()
filetype plugin indent on

syntax enable

if has("gui_running")
  set background=dark
  colorscheme material-theme
  set guioptions -=m
  set guioptions -=T
  set guioptions -=r
else
  colorscheme molokai
  set background=light
endif
