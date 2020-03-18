#!/bin/bash

for FILE in .vimrc .tmux.conf .ssh/rc .gitconfig .gitignore;
do
    if [ -a ~/$FILE ]; then
        echo "Skipping $FILE"
    else
        ln -s `pwd`/$FILE ~/$FILE
    fi
done

# Install Vim Color Schemes
mkdir -p ~/.vim/colors
for FILE in `ls vimcolors`
do
    if [ -a ~/.vim/colors/$FILE ]; then
        echo "Skipping $FILE"
    else
        ln -s `pwd`/vimcolors/$FILE ~/.vim/colors/
    fi
done
