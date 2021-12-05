# Homelab
Kara's Personal Homelab Instructions, Setup, Scripts, Templates, etc.

## Install Proxmox
I used a USB stick with Ventoy to add the Proxmox ISO
 - https://www.proxmox.com/en/downloads/category/iso-images-pve
 - https://www.ventoy.net/en/download.html

## Edit Proxmox Storage
- Access all storage
- Datacenter > storage > local-lvm > remove
- Node > console

In the console:

> lvremove /dev/pve/data -y

> lvresize -l +100%FREE /dev/pve/root

> resize2fs /dev/mapper/pve-root

## Setup Container (CT)
Local (storage) > CT Templates > Templates > search for debian-10-turnkey-core_16

Proxmox > Create CT

General

- [Select] Node name
- [Enter] CT ID
- [Enter] Hostname
- [Enter] Password

Template

- [Select] Storage
- [Select] Template - debian-10-turnkey-core_16

Disks

- [Select] Storage
- [Enter] Disk Size

CPU

- [Enter] Cores

Memory

- [Enter] Memory (MiB)

Network:

DNS:

Confirm
- Finish

## Setup Docker
Wait for CT to start

Go to CT console
- [Enter] root
- [Enter] password

Turnkey Config
- You can skip API
- You can skip Email
- You can skip security updates
- NOTE ip-addresses
- [Select] Advanced Menu
- [Select] Quit

## Optional debian config
https://raw.githubusercontent.com/Kara-Cooper/Homelab/main/1_debian_initial

## Setup Docker Services

Figure out your IP address

ip addr

go to ip:9000 to access portainer

## Optional start downloading docker images

https://raw.githubusercontent.com/Kara-Cooper/Homelab/main/3_docker_pull

## Setup Portainer

Navigate to Settings > Environment > local > Add public IP

Go to App Templates > Custom Templates 

- Add Custom Template
- Enter Title
- Enter description
- copy compose files from Github folder

## compose files

4_docker_compose 

https://raw.githubusercontent.com/Kara-Cooper/Homelab/main/4_docker_compose

5_docker_compose_complex 

https://raw.githubusercontent.com/Kara-Cooper/Homelab/main/5_docker_compose_complex

Deploy custom templates via "Deploy the stack"

## Edit ports as needed
- For example if the port is 80:80, edit the *first number* (host pc port):(container port). 

## Add volumes to network

## Rancher
docker run -d --restart=unless-stopped -p 80:80 -p 443:443 --privileged rancher/rancher
