#!/bin/bash

sudo -u minecraft screen -S mc-server -X stuff "say =======================================\015"
sleep 1
sudo -u minecraft screen -S mc-server -X stuff "say サーバーは10分後に再起動します\015"
sleep 1
sudo -u minecraft screen -S mc-server -X stuff "say =======================================\015"

sleep 300

sudo -u minecraft screen -S mc-server -X stuff "say =======================================\015"
sleep 1
sudo -u minecraft screen -S mc-server -X stuff "say サーバーは5分後に再起動します\015"
sleep 1
sudo -u minecraft screen -S mc-server -X stuff "say =======================================\015"

sleep 180

sudo -u minecraft screen -S mc-server -X stuff "say =======================================\015"
sleep 1
sudo -u minecraft screen -S mc-server -X stuff "say サーバーは2分後に再起動します\015"
sleep 1
sudo -u minecraft screen -S mc-server -X stuff "say =======================================\015"

sleep 60

sudo -u minecraft screen -S mc-server -X stuff "say =======================================\015"
sleep 1
sudo -u minecraft screen -S mc-server -X stuff "say サーバーは1分後に再起動します\015"
sleep 1
sudo -u minecraft screen -S mc-server -X stuff "say =======================================\015"

sleep 30

sudo -u minecraft screen -S mc-server -X stuff "say =======================================\015"
sleep 1
sudo -u minecraft screen -S mc-server -X stuff "say サーバーは30秒後に再起動します\015"
sleep 1
sudo -u minecraft screen -S mc-server -X stuff "say =======================================\015"

sleep 30