pq2gps
======

Send geocaching pocket querys as waypoints to (old) garmin devices

![alt text](https://gitlab.com/RealD/pq2gps/raw/master/doc/e.jpg "Waypoint")
![alt text](https://gitlab.com/RealD/pq2gps/raw/master/doc/h.jpg "Map")

Cache types will be displayed in map with related icon and shortname. Tradional, multi, unknown and letterbox 
caches will be marked with a red X if they are currently unavailable. Every waypoint contains difficulty, 
size, terrain, gc waypoint code and name (until no space left).

Preconditions
=============
- recent version of gpsbabel for you OS
- garmin gps receiver with map support (tested with vista hcx, 60 csx)
- usb data cable
- files pq2gps.bat, updateicons.exe (.pl on linux), wpts2gps.bat, wpt2.style and wpt3.style (see below)

Download
========
- Checkout git repository or download zip: https://github.com/reald/pq2gps/archive/master.zip

prepare gps receiver (only once)
================================
First, you have to load a user defined icon set into your gps receiver. The geocaching icons are in the file icons.zip. 
Extract them and send them with ximage (by garmin) to your gps reveiver. The zip file contains the english (en) and 
the german (de) filenames. Choose the directory that fits to your gps receiver (backup the old icons first and 
look at the filenames).

Windows
=======

Install
-------
Next you need the program gpsbabel (http://www.gpsbabel.org/download.html version >=1.3.5). Download and install
to your desired directory.

Copy the files pq2gps.bat, updateiconswin.exe, wpts2gps.bat, wpt2.style and wpt3.style into the same (!) directory. This
may require admin permissions.

Create two links (drag and drop while holding left alt key) from your gpsbabel directory in your "sendto" folder 
([systemdrive] / Users / [username] / AppData / Roaming / Microsoft / Windows / SendTo /) for pq2gps.bat and wpts2gps.bat. 

Sending a pocket query to the gps receiver (windows)
----------------------------------------------------
Plug in your device and power it on. Unzip a pocket query. 

Right click on 123456.gpx and choose "send to..." pq2gps.bat for Pocket Querys or wpts2gps.bat for waypoints.

Other operating systems
=======================

Install
-------
You can use any operating system that is supported by gpsbabel. Install using your software distribution of choice
or by hand. Just keep sure gpsbabel is in your path.

Get the files under the linux directory and place them somewhere. You can create symlinks for pq2gps.sh and gpx2gps.sh
to /usr/local/bin if you like.

The installation of the user defined icon set seems to have to be run on a windows machine (just once). 
If you know (free) alternatives to ximage, please let me know.

You may need to change the devicename for your usb port in the *.sh files (read the comments in those files).

Usage
-----
Plug in your device and power it on. Unzip a pocket query.

Pocket Querys:
```
./pq2gps.sh 123456.gpx
```

Waypoints:
```
./gpx2gps.sh 123456-wpts.gpx
```


Very old gps receiver without usb but serial port
=================================================
Edit files pq2gps.bat and wpts2gps.bat:
Change all "-F usb:" to your serial port ("-F com1:" for COM1 and "-F com2: for COM2).
