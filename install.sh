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

# Install vscode extensions
VSCODE_EXT=~/.vscode/extensions
if [ ! -d $VSCODE_EXT ]; then
    mkdir -p $VSCODE_EXT
fi
for FILE in `ls vscode/extensions`
do
    if [ ! -d $FILE ]; then
        ln -s `pwd`/vscode/extensions/$FILE $VSCODE_EXT/$FILE
    fi
done

