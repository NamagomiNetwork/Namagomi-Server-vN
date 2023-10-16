#!/bin/bash

sudo bash ./alert.sh

sudo bash ./stop.sh

sudo bash ./backup.sh

sudo systemctl enable mc-server

sudo reboot