vim-config
==========

[VIM](http://www.vim.org) only works great with customization. In this repository I maintain the configuration files to make it work for me on Linux and Windows. I mostly run it in GUI mode (GVim).

Installation
------------

1. Install VIM  
   On Windows: [Self-installing executable](http://www.vim.org/download.php#pc)  
   On Linux: `$ sudo apt-get install vim-gnome`

2. Run `git clone --recursive https://github.com/ymx/vim-config.git`

3. Copy `.vim`, `.gvimrc` and `.vimrc` to your `%UserProfile%` (Windows) or `$HOME` (Linux) directory.

4. After starting VIM for the first time, run the `:BundleInstall` command to install the required plugins and restart VIM.
