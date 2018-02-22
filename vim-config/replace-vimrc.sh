#!/bin/bash

if [ -f "~/.vimrc" ]
then
rm ~/.vimrc
else
echo "no vimrc in home"
fi

cp vimrc ~/.vimrc

echo "done..."
