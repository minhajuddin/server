#!/bin/bash

set -e

echo "> cloning the server repo"
cd $HOME
git clone https://github.com/minhajuddin/server
cd $HOME/server/

bash ./setup.sh
