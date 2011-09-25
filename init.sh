#!/bin/bash

#don't forget to make the file executable:
#chmod +x init.sh
scriptFolder=~/myConfigs/
scriptGitRepository="git@github.com:mkhDev/myConfigs.git"
scriptGitBranch="master"
sshFolderPath=~/.ssh/
sshPk=${sshFolderPath}id_rsa
gitUserName="Mazen A. Melibari"
gitEmail="mazen@mazen.ws"
gitEditor="vim"

mkdir $scriptFolder
cd $scriptFolder

# Install packages
sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install vim
sudo apt-get install git
sudo apt-get install screen

# SSH Key
# TODO: check if the ssh private key exsits 
echo "Create SSH private key? (y/n)?"
read
if [ "$REPLY" == 'y' ]; then
    if [ ! -d $sshFolderPath ]; then
        mkdir $sshFolderPath
        echo "SSH folder created..."
    fi
    echo "#Paste your SSH private key here, then save and exit (:wq)" > $sshPk
    vim $sshPk
    chmod 600 $sshPk
    echo "SSH private key saved..."
fi

# Download all the config files from the git repository
git clone -b $scriptGitBranch $scriptGitRepository .

# Copy DotFiles
cp .bash_profile ~/.bash_profile
cp .screenrc ~/.screenrc
cp .vimrc ~/.vimrc
cp -r ./.vim ~/
echo "DotFiles copied..."


# Git
git config --global user.name "Mazen A. Melibari" 
git config --global user.email "mazen@mazen.ws" 

git config --global core.autocrlf input
git config --global core.safecrlf true
git config --global core.editor "vim"
git config --global core.excludesfile ~/.gitignore
echo "Git configured.."
