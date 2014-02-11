#!/bin/sh
#
# Send given .gpx file to gps
#
# $RCSfile: gpx2gps.sh,v $
# $Revision: 1.2 $
# $Date: 2008/10/27 19:27:13 $
#
# $Log: gpx2gps.sh,v $
# Revision 1.2  2008/10/27 19:27:13  real
# *** empty log message ***
#
# Revision 1.1  2008/09/14 18:48:31  real
# Initial revision
#

# configuration

GPSPORT="/dev/ttyUSB0"    # Your USB Port. On mac: "usb:"

# do not edit something below

gpsbabel -s -i gpx -o garmin,snlen=14 $1 "$GPSPORT"