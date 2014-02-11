#!/bin/sh -x
#
# Send Pocket Query (.gpx) to gps (with cache icons)
#
# $RCSfile: pq2gps.sh,v $ 
# $Revision: 1.2 $
# $Date: 2008/10/27 19:27:00 $
#
# $Log: pq2gps.sh,v $
# Revision 1.2  2008/10/27 19:27:00  real
# *** empty log message ***
#
# Revision 1.1  2008/09/14 18:48:31  real
# Initial revision
#

# configuration

GPSPORT="/dev/ttyUSB0"		# Your USB Port. On mac: "usb:"

STYLEFILEA="/home/real/lager/geocaching/tools/pq2gps/wpta.style"
STYLEFILEB="/home/real/lager/geocaching/tools/pq2gps/wptb.style"

# do not edit something below

gpsbabel -i gpx -f "$1" -o xcsv,style="$STYLEFILEA" -F /tmp/teil1.txt
gpsbabel -s -i xcsv,style="$STYLEFILEB" -f /tmp/teil1.txt -o xcsv,style="$STYLEFILEB" -F /tmp/teil2.txt
updateicons
gpsbabel -i xcsv,style="$STYLEFILEA" -f /tmp/teil3.txt -o garmin,snlen=14 -F "$GPSPORT"

rm /tmp/teil3.txt
rm /tmp/teil2.txt
rm /tmp/teil1.txt
