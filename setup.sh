#!/bin/bash

repo_dir="$(dirname "$0")"

ln -s "${repo_dir}/inputrc" ~/.inputrc
ln -s "${repo_dir}/tmux.conf" ~/.tmux.conf
echo "${repo_dir}/bash_aliases.sh" >> ~/.bashrc
