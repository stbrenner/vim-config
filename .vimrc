" Basic Vundle configuration
set nocompatible   " Disable VI compatibility mode
filetype off
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim/
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles
Bundle 'gmarik/vundle'                   
Bundle 'vim-ruby/vim-ruby'               
Bundle 'scrooloose/syntastic'            
Bundle 'scrooloose/nerdtree'             
Bundle 'scrooloose/nerdcommenter'        
Bundle 'kien/ctrlp.vim'                  
Bundle 'othree/html5.vim'                
Bundle 'altercation/vim-colors-solarized'
Bundle 'bufexplorer.zip'                 
Bundle 'pangloss/vim-javascript'         
Bundle 'Lokaltog/powerline'              
Bundle "tomtom/tlib_vim"
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

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

" NERDTree behavior
autocmd vimenter * if !argc() | NERDTree | endif   " Start NERDTree automatically when no file is specified
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif   " Close vim if the only window left open is a NERDTree
map <C-n> :NERDTreeToggle<CR>

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
