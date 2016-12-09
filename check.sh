linesTOread=200
#check TTY connections
TTYUSB=$(dmesg | grep tty|grep USB|rev|awk '{print $1}'|rev)

echo -n "USB TTY device found at /dev/"
echo -n $TTYUSB
echo .
read -n $linesTOread LINES < /dev/$TTYUSB
echo "Reading Lines:"
echo $LINES
