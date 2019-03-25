#!/bin/bash
# Created by: Richard Barrett & Chip Martin
# Date: 10/01/2018
# Version 1.0

# Docuementation for script
# ==========================
# https://websiteforstudents.com/installing-teamviewer-on-ubuntu-16-04-17-10-18-04/
# https://www.howtoforge.com/tutorial/how-to-install-and-use-iostat-on-ubuntu-1604/
# http://www.codebind.com/linux-tutorials/install-curl-ubuntu-16-04/
# https://askubuntu.com/questions/833863/how-to-install-animation-addon-plugin-of-compiz-in-ubuntu-16-04
# https://broadsign.com/docs/broadsign-control/12-1/install-player-on-linux.html
# https://askubuntu.com/questions/457371/how-to-add-an-application-icons-to-the-desktop-in-14-04
# https://www.finchvpn.com/guide/ubuntu/openvpn
# https://www.linux.com/learn/configure-linux-clients-connect-openvpn-server
# https://blog.ssdnodes.com/blog/tutorial-installing-openvpn-on-ubuntu-16-04/
# https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-vnc-on-ubuntu-16-04
# https://www.linode.com/docs/applications/remote-desktop/install-vnc-on-ubuntu-16-04/


# Tweaking Documentation
# ======================
# https://www.makeuseof.com/tag/11-must-apps-ubuntu-right-fresh-install/
# https://askubuntu.com/questions/131979/how-to-install-synaptic-package-manager
# https://www.tecmint.com/things-you-mostly-need-to-do-after-installing-ubuntu-16-04/4/

# Script will check for error detection and move to next command if detected with traceback error
# ===============================================================================================

# Script will install required packages
# ======================================

sudo apt-get -f install git -y
sudo apt-get -f install expect -y
sudo apt-get -f install openssh-server openssh-client -y
sudo apt-get install unity-tweak-tool -y
sudo apt-get install openvpn -y
sudo apt-get -f install curl -y
sudo apt-get -f install traceroute -y
sudo apt-get install hal -y
sudo apt-get -f install sysstat -y
sudo apt-get -f install wget -y
sudo apt-get -f install vim -y
sudo apt-get -f install compizconfig-settings-manager compiz-plugins-extra -y
sudo apt-get -f install synaptic -y
sudo add-apt-repository ppa:appgrid/stable -y
sudo apt-get update -y
sudo apt-get -f install appgrid -y
sudo add-apt-repository ppa:alessandro-strada/ppa -y
sudo apt-get update
sudo apt-get -f install openvpn -y
#sudo apt-get install --reinstall network-manager network-manager-gnome network-manager-openvpn network-manager-openvpn-gnome
#sudo service network-manager restart
sudo apt-get install google-drive-ocamlfuse -y
sudo apt-get -f install xvnc4viewer -y

# Script will Utilize Expect tool to force repo and software updates
# ==================================================================

# Need to figure out how to work this out

# Script will make directories
# ============================

mkdir Clear_Digital_Media 
  cd Clear_Digital_Media 
    mkdir Apps && mkdir Broadsign && mkdir Services && mkdir Notes
cd 


# Script will curl and download Teamviewer and install into tmp
# ==============================================================

cd /tmp && wget https://download.teamviewer.com/download/linux/signature/TeamViewer2017.asc

sudo apt-key add TeamViewer2017.asc

sudo sh -c 'echo "deb http://linux.teamviewer.com/deb stable main" >> /etc/apt/sources.list.d/teamviewer.list'
sudo sh -c 'echo "deb http://linux.teamviewer.com/deb preview main" >> /etc/apt/sources.list.d/teamviewer.list'

sudo apt-get update -y
sudo apt install teamviewer -y

cd

# Script will curl and install broadsign player under broadsign package
# =====================================================================
cd /Clear_Digital_Media/Broadsign/ 

wget https://s3-us-west-2.amazonaws.com/cdmftp/Public/bsplayer-13_0_0-2-amd64.deb

cd 

sudo dpkg -i bsplayer-13_0_0-2-amd64.deb

# sudo sh -c 'echo "deb http://portal.broadsign.com/deb stable main" >> /etc/apt/sources.list.d/broadsign.list'
# sudo sh -c 'echo "deb http://portal.broadsign.com/deb preview main" >> /etc/apt/sources.list.d/broadsign.list'

# sudo apt update
# sudo apt install broadsign -y

# Script will check for dependencies and push new commits
# =======================================================
sudo apt-get install -f -y


# Script will move all of the necessary applications onto the desktop 
# ===================================================================
# First copy your desired application's icon from the /usr/share/applications directory to Desktop
# sudo cp /usr/share/applications/filename.desktop ~/Desktop
# sudo chmod +x ~/Desktop/filename.desktop

# Copy applications to desktop
sudo cp /usr/share/applications/gnome-terminal.desktop ~/Desktop
sudo chmod +x ~/Desktop/gnome-terminal.desktop

sudo cp /usr/share/applications/unity-control-center.desktop ~/Desktop
sudo chmod +x ~/Desktop/unity-control-center.desktop

sudo cp /usr/share/applications/unity-datetime-panel.desktop ~/Desktop
sudo chmod +x ~/Desktop/unity-datetime-panel.desktop

sudo cp /usr/share/applications/unity-mouse-panel.desktop ~/Desktop
sudo chmod +x ~/Desktop/unity-mouse-panel.desktop

sudo cp /usr/share/applications/unity-network-panel.desktop ~/Desktop
sudo chmod +x ~/Desktop/unity-network-panel.desktop

sudo cp /usr/share/applications/com.teamviewer.TeamViewer.desktop ~/Desktop
sudo chmod +x ~/Desktop/com.teamviewer.TeamViewer.desktop

sudo cp /usr/share/applications/nautilus.desktop ~/Desktop/
sudo chmod +x ~/Desktop/nautilus.desktop

# Copy the brcmfmac43455-sdio.txt Wifi driver into /lib/firmware/brcm
# ====================================================================

cd ~/Clear_Digital_Media/
sudo cp brcmfmac43455-sdio.txt /lib/firmware/brcm/
cd ~

# Script will change permssions on scripts that need permissions
# ===============================================================

cd ~/Clear_Digital_Media
sudo chmod +x unity_global_menu_bar_destroy.sh
sudo chmod +x unity_global_menu_bar_restore.sh
sudo chmod +x finish_script.sh
sudo chmod +x client_data_push.sh
sudo cp client_data_push.sh /etc/cron.daily/
cd ~

# Script will change the contents of the Bash Profile to match Bash\ Profile
# ==========================================================================
cd ~/Clear_Digital_Media
mv Bash\ Profile ~/.bashrc
cd ~

# Script Downloads error wallpaper image for mediaplayer and sets it as desktop background
# ========================================================================================
wget https://s3-us-west-2.amazonaws.com/cdmftp/Public/Documents/HNN_ErrorScreen-01.jpg
gsettings set org.gnome.desktop.background picture-uri file:///home/cleardigitalmedia/HNN_ErrorScreen-01.jpg

# Copy finish_script.sh into root directory & initialize finish_script.sh
# ========================================================================
cd ~/Clear_Digital_Media
sudo ./finish_script.sh
cd ~

#Done
