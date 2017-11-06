!#/bin/bash

echo "git config after install"

# global level config
git config --global core.editor "vim"
git config --global alias.st "status"
git config --global alias.br "branch"
git config --global alias.cm "commit"

echo "config done"
