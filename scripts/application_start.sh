#!/bin/bash

#give permission for everything in the app directory
sudo chmod -R 777 /home/ubuntu/app

#navigate into our working directory where we have all our github files
cd /home/ubuntu/app

#add npm and node to path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion (node is in path now)

pm2 kill

#install node modules & build & start production
# 백그라운드로 안됨
# npm run deploy &

npm ci
npm run build
pm2 start ecosystem.config.js