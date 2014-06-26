
#!/system/bin/sh
wl down
wl mpc 0
wl country ALL
wl frameburst 1
wl scansuppress 1
wl up
case "$2" in
	"802.11na" )
		wl band a
		;;
	"802.11a" )
		wl band a
		;;
	* )
		wl band b
		;;
esac
wl channel $1

