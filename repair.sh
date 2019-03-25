# Script will change the contents of the Bash Profile to match Bash\ Profile
# ==========================================================================
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
