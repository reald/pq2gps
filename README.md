pq2gps
======

Send geocaching pocket querys as waypoints to (old) garmin devices

Cache types will be displayed in map with related icon and shortname. Tradional, multi, unknown and letterbox 
caches will be marked with a red X if they are currently unavailable. Every waypoint contains difficulty, 
size, terrain, gc waypoint code and name (until no space left).

preconditions
=============
- recent version of gpsbabel for you OS
- garmin gps receiver with map support (tested with vista hcx, 60 csx)
- usb data cable
- files pq2gps.bat, updateicons.exe (.pl on linux), wpts2gps.bat, wpt2.style and wpt3.style (see below)

prepare gps receiver (only once)
================================
First, you have to load a user defined icon set into your gps receiver. The geocaching icons are in the file icons.zip. 
Extract them and send them with ximage (by garmin) to your gps reveiver. The zip file contains the english (en) and 
the german (de) filenames. Choose the directory that fits to your gps receiver (backup the old icons first and 
look at the filenames).

install (windows)
=================
Next you need the program gpsbabel (http://www.gpsbabel.org/download.html version >=1.3.5). Download and install
to your desired directory.

Copy the files pq2gps.bat, updateiconswin.exe, wpts2gps.bat, wpt2.style and wpt3.style to the same (!) directory.


Sending a pocket query to the gps receiver (windows):
=====================================================
Plug in your device and power it on. Unzip a pocket query. 

Click on 123456.gpx with right mouse button and choose "open with...". Choose "pq2gps.bat" as program. 
The pocket query will be processed and sent to your gps device. 
Important: Do NOT choose the option "always open filetype with this program"! The "open with..." option might disappear!

To send waypoints: Right mouse click on 123456-wpts.gpx, "open with..." and choose "wpts2gps.bat" as program. 
The waypoints will be sent but without touching the icons.

Better but more complicated alternative: 
Create 2 links in your sendto folder to pq2gps.bat and wpts2gps.bat. 
Click on 123456.gpx with right mouse button and choose "send to..." pq2gps.bat for PQ or wpts2gps.bat for waypoints.

Other operating systems:
========================
You can use any operating system that is supported by gpsbabel.
You may need to change the devicename for your usb port in the *.sh files (read the comments in those files).

The installation of the user defined icon set seems to have to be run on a windows machine (just once). 
If you know (free) alternatives to ximage, please let me know.

Usage:

Plug in your device and power it on. Unzip a pocket query.

./pq2gps.sh 123456.gpx
./gpx2gps.sh 123456-wpts.gpx

Very old gps receiver without usb but serial port
=================================================
Edit files pq2gps.bat and wpts2gps.bat:
Change all "-F usb:" to your serial port ("-F com1:" for COM1 and "-F com2: for COM2).
