vim-config
==========

VIM is my favorite text editor. In this repository I maintain the configuration files to make it work for me on Linux and Windows. I mostly run it in GUI mode (GVim).

Prerequisites
-------------

1. VIM installed  
   On Windows: [OLE GUI executable](http://www.vim.org/download.php#pc)  
   On Linux: `$ sudo apt-get install vim-gnome`

2. Python 2.7 installed  
   On Windows: [Python 2.7.x Windows Installer](http://www.python.org/download/)

Installation
------------

1. Run `git clone --recursive https://github.com/ymx/vim-config.git`

2. On Linux: Copy `.vim`, `.gvimrc` and `.vimrc` to your `$HOME` directory  
   On Windows: Copy `.vim`, `.gvimrc`, `.vimrc` and `windows-only\.config` to your `%UserProfile%` directory

3. After starting VIM for the first time, run the `:BundleInstall` command to install the required plugins and restart VIM.
