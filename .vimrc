syntax on

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on


"YCM settings


let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

"let g:ycm_global_ycm_extra_conf = '.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf = 1
"let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_filepath_completion_use_working_dir = 1
let g:ycm_collect_identifiers_from_tags_files = 1

" Point YCM to the Pipenv created virtualenv, if possible
" At first, get the output of 'pipenv --venv' command.
let pipenv_venv_path = system('pipenv --venv')
" The above system() call produces a non zero exit code whenever
" a proper virtual environment has not been found.
" So, second, we only point YCM to the virtual environment when
" the call to 'pipenv --venv' was successful.
" Remember, that 'pipenv --venv' only points to the root directory
" of the virtual environment, so we have to append a full path to
" the python executable.
if shell_error == 0
  let venv_path = substitute(pipenv_venv_path, '\n', '', '')
  let g:ycm_python_binary_path = venv_path . '/bin/python'
else
  let g:ycm_python_binary_path = 'python'
endif



"Preserve last editing position in VIM
source $VIMRUNTIME/vimrc_example.vim



set pastetoggle=<F2>
set paste
set tabstop=4
set shiftwidth=4
set softtabstop=4
set encoding=utf-8
set scrolloff=3
au Filetype python setl et ts=4 sw=4
"set autoindent
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
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

"autocmd BufRead,BufNewFile *.py set cinwords=class,def,elif,else,except,finally,for,if,try,while
"autocmd FileType * set tabstop=2|set shiftwidth=2|set noexpandtab
"autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
"map :let &background = ( &background == "dark"? "light" : "dark" )
"if has("macunix")
"	  if v:version >= 703
"			" Default yank and paste go to Mac's clipboard
"			"syntax on
"      set clipboard=unnamed
"    endif
"endif
"if has('gui_running')
"    set background=dark
"else
"    set background=dark
"endif
