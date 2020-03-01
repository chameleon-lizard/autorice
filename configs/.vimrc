" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Airline    
Plugin 'vim-airline/vim-airline'

" Airline themes
Plugin 'vim-airline/vim-airline-themes'

" Themes
Plugin 'dylanaraps/wal'
Plugin 'deviantfero/wpgtk.vim'

" YouCompleteMe - autocomplete
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'

call vundle#end()            " required
filetype plugin indent on    " required

set nu

set backspace=indent,eol,start
set tabstop=8 
set softtabstop=0 
set expandtab
set shiftwidth=4
set smarttab
set autoindent
set mouse=a
set completeopt-=preview

:syntax on
:colorscheme wal

let g:airline_theme='wpgtk'
let g:airline_powerline_fonts = 1

set t_Co=256 " 256 colors in terminal

set encoding=utf8

let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
