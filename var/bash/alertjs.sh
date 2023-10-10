#!/bin/bash

sudo -u minecraft screen -S mc-server -X stuff "say =======================================\015"
sleep 1
sudo -u minecraft screen -S mc-server -X stuff "say サーバーは30秒後に再起動します\015"
sleep 1
sudo -u minecraft screen -S mc-server -X stuff "say =======================================\015"

sleep 30