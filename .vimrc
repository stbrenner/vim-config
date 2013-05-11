" Basic Vundle configuration
set nocompatible   " Disable VI compatibility mode
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles
Bundle 'gmarik/vundle'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'othree/html5.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bufexplorer.zip'
Bundle 'scrooloose/nerdcommenter'

" Tab behavior
set expandtab
set shiftwidth=2
set softtabstop=2

" General behavior
set nowrap                       " Not wrapping lines
set autowrite                    " Auto-save files before executing make
set hidden                       " Allow unsaved buffers
set backspace=indent,eol,start   " Backspace also via line breaks
let mapleader=","                " Comma instead of backslash as <leader>

" Make
set makeprg=echo\ Make\ command\ not\ defined\ -\ set\ makeprg=...
imap <F5> <Esc>:make<Enter>
nmap <F5> :make<Enter>

" Call commands on start-up
function! StartUp()                                                                                                                                                                                         
  if 0 == argc()
    NERDTree
  end
endfunction
autocmd VimEnter * call StartUp()

" CtrlP behavior
let g:ctrlp_working_path_mode=0   " Start searching from the currend working directory

" Windows behavior
if has("win32")
  set ffs=dos   " On Windows assume Cr-Lf line endings
endif

" Vundle wrap-up
filetype plugin indent on
