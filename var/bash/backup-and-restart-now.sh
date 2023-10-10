#!/bin/bash

sudo bash ./alertjs.sh

sudo systemctl stop mc-server

sudo bash ./backup.sh

sudo systemctl start mc-server