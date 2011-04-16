Introduction
============
My own config files and init-config bash script. 

init.sh
-------
The bash script init.sh performs the following actions:
*   install essential packages (build-essential, git, vim, gnu screen)
*   create the ssh private key file
*   copy the dot files (.bash_profile, .vimrc, and .screenrc) to the HOME dir
*   copy .vim directory to ~/.vim
*   configure git.

VIM Configs
-----------
Basic configs for VIM with NERDTree plugin and wombat color scheme included in .vimrc; the .vim directory also contains a backup and tmp directories which used as central backup and swap directories for vim.

GNU Screen
----------
".screenrc" contains a very basic GNU Screen configs.

Usage
=====
    sudo wget --no-check-certificate https://github.com/mkhDev/myConfigs/raw/master/init.sh && bash init.sh
