#!/bin/bash
# Update Script for FindUser_URLs v2.1-Stable
# Script created by @Sunnam01ram



dependencies() {

command -v git > /dev/null 2>&1 || { echo >&2 "Package GIT is not installed ... Unable to update ..."; exit 1; }

}

script() {

clear
printf "\n \e[1;92mUpdating \e[1;94mFindUser_URLs\e[1;92m ...\n\n"
sleep 1.5
cd ..
rm -rf FindUser_URLs
git clone https://github.com/sunnamsriram1/FindUser_URLs.git
cd FindUser_URLs
chmod +x userurl.sh
printf "\n\e[1;92mRestarting ...\n\e[0m"
bash userurl.sh
cd ..

}

dependencies
script

