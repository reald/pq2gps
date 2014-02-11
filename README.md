pq2gps
======

Send geocaching pocket querys to (old) garmin devices

Cache types will be displayed in map with related icon and shortname. Tradional, multi, unknown and letterbox 
caches will be marked with a red X if they are currently unavailable. Every waypoint contains difficulty, 
size, terrain, gc waypoint code and name (until no space left).

preconditions
=============
- recent version of gpsbabel
- garmin gps receiver with map support (tested with vista hcx, 60 csx)
- data cable
- files pq2gps.bat, updateicons.exe (.pl on linux), wpts2gps.bat, wpt2.style and wpt3.style (see below)


one-time steps (windows only):
==============================
First, you have to load a user defined icon set to your gps receiver. The geocaching icons are in the file icons.zip. 
Extract them and send them with ximage by garmin to your gps reveiver. The zip file contains the english (en) and 
the german (de) filenames. Choose the directory that fits to your gps receiver (backup the old icons first and 
look at the filenames).

Next you need the program gpsbabel (http://www.gpsbabel.org/download.html version >=1.3.5). Download and install
to your desired directory.

Copy the files pq2gps.bat, updateiconswin.exe, wpts2gps.bat, wpt2.style and wpt3.style to the same (!) directory.

If your gps unit does not have an usb port, you have to edit the files pq2gps.bat and wpts2gps.bat.
Change all "-F usb:" to your serial port ("-F com1:" for COM1 and "-F com2: for COM2).

That were the most difficult steps. They have to be done only once.


Sending a pocket query to the gps receiver (windows):
=====================================================
Here we go: Plug in your device and power it on. Unzip a pocket query. Click on 123456.gpx with right mouse 
button and choose "open with...". Choose "pq2gps.bat" as program. 
The pocket query will be processed and sent to your gps device. 
Important: Do NOT choose the option "always open filetype with this program"! The "open with..." option might disappear!

To send waypoints, too: Right mouse click on 123456-wpts.gpx, "open with..." and choose "wpts2gps.bat" as program. 
The waypoints will be sent but without touching the icons.

Miscellaneous:
==============
Send bugs and experiency reports (e.g. successfully tested gps receivers) to github@tildepipe.de.

Other operating systems:
========================
You can use any operating system that is supported by gpsbabel. The second download file contains similar scripts
or linux and mac. You may need to change the devicename for your usb port in the *.sh files (read the comments in those files).

The installation of the user defined icon set seems to have to be run on a windows machine (just once). 
If you know (free) alternatives to ximage, please let me know.
