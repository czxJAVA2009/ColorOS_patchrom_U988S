
#!/system/bin/sh
ifconfig wlan0 down
echo -n "vendor/firmware/bcm43341/fw_bcm43341_mfg.bin" > /data/misc/wifi/firmware/firmware_path
ifconfig wlan0 up
