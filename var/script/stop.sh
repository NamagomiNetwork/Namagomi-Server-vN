#!/bin/bash

sudo systemctl disable mc-server

sudo -u minecraft screen -S mc-server -X stuff "stop"

sudo systemctl stop mc-server