#!/bin/bash
# Created by Richard Barrett
# Date 01/21/2019
# Version 1.0
# ==============================================================
#                          **Notes**
# ==============================================================

# Script will git changes on master bracnh
# Script will first detect changes on local repository
# Script will pull down any new changes if master branch changed

# ==============================================================

cd ~/Desktop/Clear_Digital_Media
    git diff
    git checkout master
    git pull origin master
cd ~

# END
