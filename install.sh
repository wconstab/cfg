#!/bin/bash

for FILE in .vimrc .tmux.conf .ssh/rc;
do
    if [ -a $FILE ]; then
        echo "Skipping $FILE"
    else
        ln -s $FILE ~/$FILE
    fi
done
