# /bin/sh
echo Installing xbmc...
sudo rm -rf /opt/xbmc-13-* && curl -L $1 | sudo tar -xzf - -C /opt
XBMC_DIR=$(ls -1td /opt/xbmc-13* | head -1)
echo $XBMC
echo "sudo XBMC_HOME=$XBMC_DIR/xbmc-bcm/xbmc-bin/share/xbmc LD_LIBRARY_PATH=$XBMC_DIR/xbmc-bcm/xbmc-bin/lib/xbmc/system $XBMC_DIR/xbmc-bcm/xbmc-bin/lib/xbmc/xbmc.bin --standalone --fs" | sudo tee /usr/bin/xbmc.bin
sudo chmod +x /usr/bin/xbmc.bin
