#! /usr/bin/bash
 apt update -y &&
 apt upgrade -y &&
 apt install openssh-server -y && 
 apt install exfat-fuse -y && 
 apt install fuse -y && 
 apt install ntfs-3g -y &&
 apt-get install samba samba-common-bin -y && 
 apt-get install apt-transport-https -y && 
 apt-get install aptitude -y && 
 apt install net-tools -y &&
 apt-get install ca-certificates -y &&
 apt-get install curl -y &&
 apt-get install gnupg -y &&
 apt-get install lsb-release -y &&
 apt update -y &&
 apt upgrade -y && 
 apt autoremove -y
 
 
 
 apt-get remove docker docker-engine docker.io containerd runc -y &&
 apt-get update -y &&
 curl -fsSL https://download.docker.com/linux/debian/gpg |  gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg &&
 echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" |  tee /etc/apt/sources.list.d/docker.list > /dev/null &&
 apt-get update -y &&
 apt-get install docker-ce docker-ce-cli containerd.io -y &&
 systemctl enable docker && 
 systemctl start docker &&
 docker run -d --name="portainer" --restart on-failure -p 9000:9000 -p 8000:8000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest



 docker pull linuxserver/calibre &&
 docker pull linuxserver/calibre-web  &&
 docker pull linuxserver/couchpotato &&
 docker pull linuxserver/headphones &&
 docker pull linuxserver/heimdall &&
 docker pull linuxserver/homeassistant &&
 docker pull linuxserver/libreoffice &&
 docker pull linuxserver/lidarr &&
 docker pull linuxserver/lychee &&
 docker pull linuxserver/medusa &&
 docker pull itzg/minecraft-server &&
 docker pull linuxserver/nginx &&
 docker pull linuxserver/overseerr &&
 docker pull linuxserver/radarr &&
 docker pull linuxserver/rsnapshot &&
 docker pull linuxserver/sickchill &&
 docker pull linuxserver/snapdrop &&
 docker pull linuxserver/sonarr &&
 docker pull linuxserver/webtop:ubuntu-mate &&
 docker pull linuxserver/wireguard &&
 docker pull jeeaaasustest/youtube-dl &&
 docker pull kmb32123/youtube-dl-server &&
 docker pull modenaf360/youtube-dl-nas
