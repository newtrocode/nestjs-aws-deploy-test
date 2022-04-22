#!/bin/bash

# download node and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc
# . ~/.nvm/nvm.sh
nvm install 16.13.0

#create our working directory if it doesnt exist
DIR="/home/ubuntu/app"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
  # overwrite 이슈 있어서 삭제
  rm -rf ${DIR}
else
  echo "Creating ${DIR} directory"
fi

mkdir ${DIR}
