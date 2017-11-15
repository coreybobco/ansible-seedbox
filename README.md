# ansible-seedbox

### Features
This Ansible playbook is designed for Ubuntu and will install the following:
- xubuntu-core (xfce desktop metapackage)
- x11vnc for remote desktop
- rtorrent + rutorrent web client
- AzuraCast (online radio management)
- Plex
- MPD with Icecast
- latest soulseekqt
- Grive (google drive sync)

###How to Use:
- On an Ubuntu-based control machine, running preinstall-control-machine will install the latest ansible from their PPA.
- Set all the environment variables listed in group_vars/all
- `ansible-playbook - i inventory setup.yml` -- run this if you only have root ssh access to secure your server by disabling root ssh access and creating a user which will have ssh access and passwordless sudo
- `ansible-playbook - i inventory site.yml` -- run this to set up all your services... Comment out Azuracast from the roles list if you don't want it.