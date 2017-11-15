# ansible-seedbox

### Features
This Ansible playbook is designed for Ubuntu (tested with Ubuntu 17.10 server image) and will install the following:
- xubuntu-core (minimal xfce desktop metapackage)
- x11vnc for remote desktop
- rtorrent + rutorrent web client with FlatUI themes
- latest soulseekqt for music downloads
- AzuraCast (online radio management)
- Plex
- MPD with Icecast
- Grive (google drive sync)

### How to Use:
- On an Ubuntu-based control machine, running `preinstall-control-machine.sh` will install the latest ansible from their PPA.
- Set all the environment variables listed in group_vars/all before proceeding. I recommend creating a .envrc file and using [direnv](https://direnv.net/).
- You will need to install Python 2.7 on your server. This doesn't come with Ubuntu 17.10, so ssh into your server and install python with apt: `apt install python`
- Now you can run the playbooks from your control machine. 
- `ansible-playbook - i inventory setup.yml` run this if you only have root ssh access to your to secure your server by disabling root ssh access and creating a user which will have ssh access and passwordless sudo
- `ansible-playbook - i inventory site.yml` -- run this to set up all your services... Uncomment Azuracast from the roles list in the site.yml file if you want more complex internet radio web management software.