#!/bin/bash
# Created by Richard Barrett
# Date 01/28/2019
# Version 1.0
# ===========================

# Script will place all of the custom scripts onto the desktop
# Script will eventually be called in the prepare script for itempotency 

cd ~/Desktop/Clear_Digital_Media/

sudo cp CDM\ Player ~/Desktop/
sudo chmod 777 ~/Desktop/CDM\ Player

sudo cp CDM\ Stop ~/Desktop/
sudo chmod 777 ~/Desktop/CDM\ Stop

cd ~
#END
