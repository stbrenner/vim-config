" Basic Vundle configuration
set nocompatible   " Disable VI compatibility mode
filetype off
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim/
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles
Bundle 'gmarik/vundle'                      " Package manager
Bundle 'vim-ruby/vim-ruby'                  " Ruby support
Bundle 'scrooloose/syntastic'               " Static code analysis
Bundle 'scrooloose/nerdtree'                " File browser
Bundle 'scrooloose/nerdcommenter'           " Shortcut for commenting out
Bundle 'kien/ctrlp.vim'                     " File search
Bundle 'othree/html5.vim'                   " HTML5 support
Bundle 'altercation/vim-colors-solarized'   " Color theme
Bundle 'bufexplorer.zip'                    " Buffer explorer
Bundle 'pangloss/vim-javascript'            " JavaScript support
Bundle 'dbext.vim'                          " Database access
Bundle 'Lokaltog/powerline'                 " Status bar

" Tab behavior
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=4

" General behavior
set nowrap                       " Not wrapping lines
set autowrite                    " Auto-save files before executing make
set hidden                       " Allow unsaved buffers
set backspace=indent,eol,start   " Backspace also via line breaks
set laststatus=2                 " Always display status bar
set noshowmode                   " Hide the default mode text
set encoding=utf-8               " Always use UTF-8 as encoding
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

" Show Powerline without fancy font
let g:powerline_config_overrides={"common": {"dividers": {"left": {"hard": " ", "soft": "| "}, "right": {"hard": " ", "soft": " |"}}}}

" Windows behavior
if has("win32")
  set ffs=dos   " On Windows assume Cr-Lf line endings
endif

" Vundle wrap-up
filetype plugin indent on
