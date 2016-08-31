set nocompatible              " be iMproved
filetype off                  " required!
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'Valloric/YouCompleteMe'
call vundle#end()   
filetype plugin indent on

"YCM settings

"let g:ycm_global_ycm_extra_conf = '.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf = 1
"let g:ycm_autoclose_preview_window_after_completion=1

set pastetoggle=<F2>
set paste
set tabstop=4
set shiftwidth=4
set softtabstop=4
set encoding=utf-8
set scrolloff=3
au Filetype python setl et ts=4 sw=4
set autoindent
set showmode

set showcmd
set hidden
" remove trailing whitespace
"autocmd BufWritePre *.py :%s/\s\+$//e

set wildmenu
set wildmode=list:longest
set visualbell

set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch


""map <F2> :NERDTreeToggle<CR>
map <F8>  :source $HOME/.vimrc<CR> 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"autocmd BufRead,BufNewFile *.py set cinwords=class,def,elif,else,except,finally,for,if,try,while
"autocmd FileType * set tabstop=2|set shiftwidth=2|set noexpandtab
"autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
"map :let &background = ( &background == "dark"? "light" : "dark" )
if has("macunix")
	  if v:version >= 703
			" Default yank and paste go to Mac's clipboard
			"syntax on
      set clipboard=unnamed
    endif
endif
if has('gui_running')
    set background=dark
else
    set background=dark
endif
