:: Send waypoints (.gpx) to gps
::
:: $RCSfile: wpts2gps.bat,v $
:: $Revision: 1.2 $
:: $Date: 2008/10/27 19:04:15 $
::
:: $Log: wpts2gps.bat,v $
:: Revision 1.2  2008/10/27 19:04:15  real
:: Unterstützung für Leerzeichen im Dateipfad
::
:: Revision 1.1  2008/09/16 15:38:30  real
:: Initial revision
::
::

SET PFAD=%~dp0

"%PFAD%gpsbabel" -s -i gpx -f %1 -o garmin,snlen=14 -F usb:
pause