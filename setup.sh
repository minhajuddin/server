#!/bin/bash

repo_dir="$(dirname "$(pwd)/$0")"

ln -sf "${repo_dir}/inputrc" ~/.inputrc
ln -sf "${repo_dir}/tmux.conf" ~/.tmux.conf
echo "${repo_dir}/bash_aliases.sh" >> ~/.bashrc
