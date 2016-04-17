#!/bin/bash

for FILE in .vimrc .tmux.conf .ssh/rc;
do
    if [ -a ~/$FILE ]; then
        echo "Skipping $FILE"
    else
        FILE_PATH=`pwd $FILE`
        ln -s $FILE_PATH/$FILE ~/$FILE
    fi
done
