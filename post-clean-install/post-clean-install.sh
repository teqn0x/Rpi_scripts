rm /etc/ssh/ssh_host_* && dpk-reconfigure openssh-server
apt-get update
apt-get install lxde-icon-theme
apt-get install ntp fake-hwclock
dpkg-reconfigure tzdata
apt-get install locales
dpkg-reconfigure locales
apt-get install console-setup keyboard-configuration
dpkg-reconfigure keyboard-configuration
