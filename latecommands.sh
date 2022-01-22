echo "deb [arch=amd64] http://download.proxmox.com/debian/pve bullseye pve-no-subscription" > /etc/apt/sources.list.d/pve-install-repo.list
wget https://enterprise.proxmox.com/debian/proxmox-release-bullseye.gpg -O /etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg
sha512sum /etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg
apt update
apt upgrade -y
apt install proxmox-ve postfix open-iscsi -y
apt remove os-prober -y
apt remove linux-image-amd64 'linux-image-5.10*' -y
apt autoremove -y
apt clean
