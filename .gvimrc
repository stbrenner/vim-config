" General behvior
set background=dark
colorscheme solarized   " A theme with a dark background
syntax on               " Enable syntax highlighting
set noswapfile

" Use a well readable font
if has("gui_gtk2")
  set guifont=Inconsolata\ 11
elseif has("gui_win32")
  set guifont=Consolas:h11:cANSI
endif
