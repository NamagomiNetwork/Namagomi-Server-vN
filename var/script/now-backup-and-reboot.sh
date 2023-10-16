#!/bin/bash

sudo bash ./alertjs.sh

sudo bash ./stop.sh

sudo bash ./backup.sh

sudo systemctl enable mc-server

sudo reboot