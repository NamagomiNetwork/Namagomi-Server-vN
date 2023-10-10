#!/bin/bash

sudo bash ./alert.sh

sudo systemctl stop mc-server

sudo bash ./backup.sh

sudo reboot