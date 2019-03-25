#!/bin/bash

# Script will start start-up programs and will enable daemons per program
# =======================================================================

# Enable Teamviewer Daemon
sudo systemctl start teamviewerd.service
sudo teamviewer daemon enable

# Enable Broadsign Daemon

# Script changes to root user and forces an update/upgrade to system components
# =============================================================================
apt-get update -y
apt-get upgrade -y

# Script will place the finishing touches like Crontab and Logrotate Utilizing Expect
# ===================================================================================
cd ~/Clear_Digital_media
sudo cp logrotate.conf /etc/logrotate.conf
cd ~


#Done
