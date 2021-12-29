#! /usr/bin/bash

# Basics
 apt update -y &&
 apt upgrade -y &&
 apt install openssh-server -y &&
 apt-get install samba samba-common-bin -y &&
 apt-get install apt-transport-https -y &&
 apt-get install aptitude -y &&
 apt install net-tools -y &&
 apt-get install ca-certificates -y &&
 apt-get install curl -y &&
 apt-get install gnupg -y &&
 apt-get install lsb-release -y &&

# File Types
 apt install exfat-fuse -y &&
 apt install fuse -y &&
 apt install ntfs-3g -y &&

# Full update
 apt-get update -y &&
 apt upgrade -y &&
 apt autoremove -y &&

# Docker
 curl -fsSL https://download.docker.com/linux/debian/gpg |  gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg &&
 echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" |  tee /etc/apt/sources.list.d/docker.list > /dev/null &&
 apt-get update -y &&
 apt-get install docker-ce docker-ce-cli containerd.io -y &&
 systemctl enable docker &&
 systemctl start docker &&

# Portainer
 docker run -d --name="portainer" --restart on-failure -p 9000:9000 -p 8000:8000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
 &&

# Docker images - Basics
 docker pull linuxserver/swag &&
 docker pull linuxserver/duckdns &&
 docker pull linuxserver/heimdall &&
 docker pull organizr/organizr &&

# Docker images - Files & Productivity
 docker pull linuxserver/nextcloud &&
 docker pull linuxserver/libreoffice &&
 docker pull linuxserver/paperless-ng &&
 docker pull linuxserver/papermerge &&
 docker pull linuxserver/wikijs &&
 docker pull linuxserver/dokuwiki &&
 docker pull mattermost/focalboard &&
 docker pull benbusby/whoogle-search &&
 docker pull linuxserver/adguardhome-sync &&
 docker pull linuxserver/homeassistant &&
 docker pull linuxserver/code-server &&
 docker pull linuxserver/doublecommander &&
 docker pull linuxserver/firefox &&
 docker pull linuxserver/grav &&
 docker pull linuxserver/rsnapshot &&
 docker pull linuxserver/snapdrop &&
 docker pull linuxserver/taisun &&
 docker pull linuxserver/wireguard &&
 docker pull linuxserver/webtop:ubuntu-mate &&
 docker pull linuxserver/grocy &&
 docker pull linuxserver/clarkson &&

# Docker images - Media Servers
 docker pull linuxserver/plex &&
 docker pull linuxserver/calibre &&
 docker pull linuxserver/ubooquity &&
 docker pull linuxserver/cops &&
 docker pull linuxserver/photoshow &&
 docker pull linuxserver/pixapop &&
 docker pull linuxserver/airsonic &&
 docker pull linuxserver/beets &&
 docker pull linuxserver/mstream &&
 docker pull linuxserver/booksonic-air &&

# Docker images - Media Downloaders
 docker pull linuxserver/medusa &&
 docker pull linuxserver/sickchill &&
 docker pull linuxserver/sonarr &&
 docker pull linuxserver/bazarr &&
 docker pull linuxserver/couchpotato &&
 docker pull linuxserver/radarr &&
 docker pull linuxserver/headphones &&
 docker pull linuxserver/lidarr &&
 docker pull linuxserver/overseerr &&
 docker pull linuxserver/lazylibrarian &&
 docker pull linuxserver/deluge &&
 docker pull linuxserver/qbittorrent &&
 docker pull linuxserver/transmission &&
 docker pull linuxserver/jackett
