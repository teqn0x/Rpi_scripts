
by dom » Fri Mar 14, 2014 10:08 pm
I thought I'd have a go at getting xbmc installed on a clean raspbian image.

Now miappa makes regular builds of raspbmc here:
http://forum.xbmc.org/showthread.php?tid=176043

Note, these are test gotham builds, including custom (by me) patches. The performance is pretty good, and you get new features early, but no guarantee there won't be new bugs.
It should be possible to install stable builds with the correct URL.

Firstly, there's a number of required libraries. So you will need to do a one off install:

Code: Select all
sudo apt-get install -f libmysqlclient-dev libmicrohttpd-dev libhal-dev libssh-dev libfribidi-dev libyajl-dev libboost-dev libass-dev libmpeg2-4-dev libmad0-dev libjpeg-dev libsamplerate-dev libogg-dev libvorbis-dev libmodplug-dev libflac-dev python-dev libbz2-dev libsqlite3-dev libpng-dev libpcre++-dev libcdio-dev libbluetooth-dev libsmbclient-dev libplist-dev libiso9660-dev libtinyxml-dev liblzo2-dev libhal-storage-dev


Here is a script that installs an xbmc build. Create a file (e.g. with "nano update_xbmc"), paste it in and make it executable (chmod +x update_xbmc)

Code: Select all
    # /bin/sh
    echo Installing xbmc...
    sudo rm -rf /opt/xbmc-13-* && curl -L $1 | sudo tar -xzf - -C /opt
    XBMC_DIR=$(ls -1td /opt/xbmc-13* | head -1)
    echo $XBMC
    echo "sudo XBMC_HOME=$XBMC_DIR/xbmc-bcm/xbmc-bin/share/xbmc LD_LIBRARY_PATH=$XBMC_DIR/xbmc-bcm/xbmc-bin/lib/xbmc/system $XBMC_DIR/xbmc-bcm/xbmc-bin/lib/xbmc/xbmc.bin --standalone --fs" | sudo tee /usr/bin/xbmc.bin
    sudo chmod +x /usr/bin/xbmc.bin


Find the newest build here (e.g. the link with Updated Gotham build 20140313 in post #xxx with the largest xxx),
and grab the http url in the wget line. Currently it is http://goo.gl/uq3tuu. Run:

Code: Select all
    ./update_xbmc http://goo.gl/uq3tuu



Now you can launch xbmc with

Code: Select all
    xbmc.bin


If you like to keep up to date, then run the update_xbmc script whenever miappa posts a new build (typically a couple of times a week).

Note: a real openelec or raspbmc install may perform better, have more suitable custom settings and addons and handle launching and exiting better, but if you just want a way of running up to date xbmc in raspian, then this may be useful.




OWN PART:
Step 1: run init-xbmc-install.sh, it will install all the required libraries
Step 2: run update-xbmc.sh <link>, where <link> is the newest link which can be found as stated in the text above
Step 3: Now xbmc should run: xbmc.bin
