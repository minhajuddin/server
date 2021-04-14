#!/bin/bash

repo_dir="$(dirname "$(pwd)/$0")"

echo "> copying authorized_keys"
mkdir -p ~/.ssh/
cat ./authorized_keys >> ~/.ssh/authorized_keys
chmod 0600 ~/.ssh/authorized_keys

echo "> settuping up inputrc, tmux.conf and bashrc"
ln -sf "${repo_dir}/inputrc" ~/.inputrc
ln -sf "${repo_dir}/tmux.conf" ~/.tmux.conf
echo "source ${repo_dir}/bash_aliases.sh" >> ~/.bashrc

echo "> DONE"
