# Ansible Role: Ubuntu Autoinstall

### This role will:
* Download and verify (GPG and SHA256) the newest Ubuntu Server 20.04 ISO
* Unpack the ISO and integrate the user-data file for semi-automated installation
* Repack the ISO and (optionally) upload it to [PiKVM](https://pikvm.org/) for futher installation

### Special thanks to:
* covertsh for [Ubuntu Autoinstall Generator](https://github.com/covertsh/ubuntu-autoinstall-generator) – this repo is pretty much an Ansible version of their script


### Example playbook:

```
---
- hosts: all
  gather_facts: yes
  become: yes

  roles:
    - role: notthebee.ubuntu_autoinstall
```

### Variables
**boot_drive_serial** – the serial number of the drive where you want to install Ubuntu. You can find it out using `ls /dev/disk/by-id`. Make sure to omit the interface (e.g. `ata-` or `scsi-`).

You can see the rest of the variables in defaults/main.yml