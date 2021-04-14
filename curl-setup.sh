#!/bin/bash

set -e

echo "> cloning the server repo"
git clone https://github.com/minhajuddin/server $HOME/
cd $HOME/server/

bash ./setup.sh
