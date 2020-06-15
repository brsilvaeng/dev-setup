
"faz o download do vim-plug, caso nao exista
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
  Plug 'junegunn/vim-plug'
  Plug 'tpope/vim-sensible'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'Valloric/YouCompleteMe'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()

set nu
set nowrap
"set ve=all

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

set t_Co=256
set background=dark
"set background=light
colorscheme PaperColor

"let g:lightline = { 'coloscheme': 'default' }
set cursorline
set hlsearch
set incsearch
set laststatus=2
set colorcolumn=80

"let g:ycm_autoclose_preview_window_after_completion=1
"let g:ycm_autoclose_preview_window_after_insertion=1
"let g:ycm_add_preview_to_completeopt=0
"let g:ycm_confirm_extra_conf=0
"
"set directory=~/.vim/tmp
"set backupdir=~/.vim/tmp
"set undodir=~/.vim/tmp


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'



