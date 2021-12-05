# Homelab
Kara's Personal Homelab Instructions, Setup, Scripts, Templates, etc.

First I used a USB stick with Ventoy to add the Proxmox ISO
  https://www.proxmox.com/en/downloads/category/iso-images-pve
  https://www.ventoy.net/en/download.html

After installing proxmox

Local (storage) > CT Templates > Templates > search for debian-10-turnkey-core_16

Proxmox > Create CT
General
> [Select] Node name
> [Enter] CT ID
> [Enter] Hostname
> [Enter] Password
Template
> [Select] Storage
> [Select] Template - debian-10-turnkey-core_16
Disks
> [Select] Storage
> [Enter] Disk Size
CPU
> [Enter] Cores
Memory
> [Enter] Memory (MiB)
Network:
DNS:
Confirm
> Finish

Wait for CT to start
Go to CT console
[Enter] root
[Enter] password

Turnkey Config
> You can skip API
> You can skip Email
> You can skip security updates
> NOTE ip-addresses
> [Select] Advanced Menu
> [Select] Quit

Now you can start using the console to setup the server and setup docker
Use the other files
