The image is shipped with OpenSSH server by default, it is very important to regenerate RSA/DSA keys:

    rm /etc/ssh/ssh_host_* && dpkg-reconfigure openssh-server 

Before starting to install stuff update the package lists in apt (otherwise you are likely to get a load of file not found errors)

    apt-get update 

Icons for LXDE are missing, so run:

    apt-get install lxde-icon-theme 

Time is not set, so run:

    apt-get install ntp fake-hwclock 

Choose your timezone:

    dpkg-reconfigure tzdata 

Configure locale settings:

    apt-get install locales

    dpkg-reconfigure locales 

Configure keyboard settings:

    apt-get install console-setup keyboard-configuration

    dpkg-reconfigure keyboard-configuration
