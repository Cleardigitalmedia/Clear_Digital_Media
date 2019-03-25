# Script will change the contents of the Bash Profile to match Bash\ Profile
# ==========================================================================

#git pull -y 

cd Desktop/Clear_Digital_Media
cp Bash\ Profile ~/.bashrc
cd ~

# Script Downloads error wallpaper image for mediaplayer and sets it as desktop background
# ========================================================================================
cd Downloads/
wget https://s3-us-west-2.amazonaws.com/cdmftp/Public/Documents/HNN_ErrorScreen-01.jpg
wget https://s3-us-west-2.amazonaws.com/cdmftp/Public/Documents/HNN_ErrorScreen_11-14-18.jpg
wget https://s3-us-west-2.amazonaws.com/cdmftp/Public/Documents/HNN_ErrorScreen_12-27-18.jpg
wget https://s3-us-west-2.amazonaws.com/cdmftp/Cleardigitalmedia+NetVision/Pictures/Roku_SplashScreen.jpg
cd ~

# Example: gsettings set org.mate.background picture-filename /home/test/Pictures/2.jpg
gsettings set org.mate.background picture-filename /home/cleardigitalmedia/Downloads/Roku_SplashScreen.jpg

# Copy finish_script.sh into root directory & initialize finish_script.sh
# ========================================================================
cd Desktop/Clear_Digital_Media

# Place Custom Scripts onto Desktop
sudo chmod +x desktop_custom_scripts.sh
  ./desktop_custom_scripts.sh
  
  # Script will download the Image for the CDM Player & Stop Icon Badge in /Downloads/
# ==================================================================================
cd Downloads/

wget https://s3-us-west-2.amazonaws.com/cdmftp/Cleardigitalmedia+NetVision/Icons/CDMIcon_64x64.svg
wget https://s3-us-west-2.amazonaws.com/cdmftp/Cleardigitalmedia+NetVision/Icons/Stop_it.png

cd ~


# Script will move all of the necessary applications onto the desktop 
# ===================================================================
# First copy your desired application's icon from the /usr/share/applications directory to Desktop
# sudo cp /usr/share/applications/filename.desktop ~/Desktop
# sudo chmod +x ~/Desktop/filename.desktop

# Copy applications to desktop
sudo cp /usr/share/applications/mate-terminal.desktop ~/Desktop
sudo chmod 777 ~/Desktop/mate-terminal.desktop

sudo cp /usr/share/applications/network.desktop ~/Desktop
sudo chmod 777 ~/Desktop/network.desktop

sudo cp /usr/share/applications/mate-display-properties.desktop ~/Desktop
sudo chmod 777 ~/Desktop/mate-display-properties.desktop

sudo cp /usr/share/applications/mate-appearance-panel.desktop ~/Desktop
sudo chmod 777 ~/Desktop/mate-appearance-panel.desktop

sudo cp /usr/share/applications/mate-network-properties.desktop ~/Desktop
sudo chmod 777 ~/Desktop/mate-network-properties.desktop

sudo cp /usr/share/applications/com.teamviewer.TeamViewer.desktop ~/Desktop
sudo chmod 777 ~/Desktop/com.teamviewer.TeamViewer.desktop

sudo cp /usr/share/applications/nautilus.desktop ~/Desktop/
sudo chmod 777 ~/Desktop/nautilus.desktop

sudo cp /usr/share/applications/mate-settings-properties.desktop ~/Desktop
sudo chmod 777 ~/Desktop/mate-settings-properties.desktop

# Script copies bash.txt. to ~/Documents/
# =======================================
cd Desktop/Clear_Digital_Media/
sudo cp bash.txt ~/Documents/
cd ~

# Script will prepare the desktop with two script icons to start/stop player
# ==========================================================================
cd Destop/Clear_Digital_Media/

sudo ./desktop_custom_scripts.sh

cd ~
