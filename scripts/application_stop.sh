#!/bin/bash
#Stopping existing node servers
echo "Stopping any existing node servers"

#add npm and node to path (없으면 pm2 못찾음)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion (node is in path now)


# pkill -f node
#sudo pm2 kill