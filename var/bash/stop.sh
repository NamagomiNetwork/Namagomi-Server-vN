#!/bin/bash

sudo -u minecraft screen -S mc-server -X stuff "kick @a 再起動後に再接続してください。byごみ\015"

sudo systemctl stop mc-server