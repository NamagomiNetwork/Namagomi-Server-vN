#!/bin/bash

# dir移動
cd ./../mc
# screenでマイクラ鯖を実行
screen -UAmdS mcserver java -Dfile.encoding=UTF-8 -Xms1G -Xmx15G -jar paper-1.21.10-115.jar nogui