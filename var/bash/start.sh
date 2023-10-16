#!/bin/bash

# dir移動
cd /var/mc-server
# screenでマイクラ鯖を実行
screen -UAmdS mc-server java -Dfile.encoding=UTF-8 -Xms1G -Xmx15G -jar paper-1.20.1-84.jar nogui