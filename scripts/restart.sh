#!/bin/bash

sudo systemctl stop minecraftServer
bash ~/minecraft/scripts/backup.sh
sudo systemctl start minecraftServer
