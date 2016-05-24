#!/bin/bash
############################
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# and backs up any old dotfiles in ~/dotfiles_old
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
# list of files/folders to symlink in homedir (without '.' )
files="bash_profile gitignore_global vim vimrc"

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
echo "Moving any existing dotfiles from ~ to $olddir"
for file in $files; do
    if [ -e ~/.$file ] && [ ! -L ~/.$file ]   # exists and not symlink
        then
                echo "Backing up ~/.$file to $olddir"
                        mv ~/.$file $olddir
                            else
                                    echo "Removing old symlink $file"  # cleanup needed when $file is a dir
                                            rm ~/.$file
                                                fi

                                                    echo "Creating symlink to $file in home directory."
                                                        ln -s $dir/.$file ~/.$file
                                                        done
