
#!/system/bin/sh
wl up
wl out
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
wl fqacurcy $1 