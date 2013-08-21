vim-config
==========

[VIM](http://www.vim.org) only works great with customization. In this repository I maintain the configuration files to make it work for me on Linux and Windows. I mostly run it in GUI mode (GVim).

Installation
------------

1. **Install VIM** 
   On Windows: [Self-installing executable](http://www.vim.org/download.php#pc)  
   On Linux: `$ sudo apt-get install vim-gnome`

2. **Copy config files**  
   Copy `.gvimrc` and `.vimrc` to your `%UserProfile%` (Windows) or `$HOME` (Linux) directory.

3. **Install plugin manager**  
   In your `%UserProfile%` (Windows) or `$HOME` (Linux) directory run  `git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle`

4. **Install plugins**  
   Start (G)VIM for the first time and run the `:BundleInstall` command. After it has completed restart VIM.
