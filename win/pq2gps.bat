:: Send pocket query (.gpx) to gps. update cacheicons
::
:: $RCSfile: pq2gps.bat,v $
:: $Revision: 1.2 $
:: $Date: 2008/10/27 19:05:12 $
::
:: $Log: pq2gps.bat,v $
:: Revision 1.2  2008/10/27 19:05:12  real
:: Unterstützung für Leerzeichen im Dateipfad
::
:: Revision 1.1  2008/09/16 15:07:17  real
:: Initial revision
::
::

:: configuration

SET PFAD=%~dp0

cd "%PFAD%"
"%PFAD%gpsbabel" -i gpx -f %1 -o xcsv,style="%PFAD%wpt3.style" -F "%TMP%\foo3.txt"
"%PFAD%gpsbabel" -s -i xcsv,style="%PFAD%wpt2.style" -f "%TMP%\foo3.txt" -o xcsv,style="%PFAD%wpt2.style" -F "%TMP%\foo.txt"
copy "%PFAD%updateiconswin.exe" %TMP%
cd "%TMP%
updateiconswin.exe"
cd "%PFAD%"
"%PFAD%gpsbabel" -i xcsv,style="%PFAD%wpt3.style" -f "%TMP%\foo2.txt" -o garmin,snlen=14 -F usb:

del "%TMP%\foo3.txt"
del "%TMP%\foo2.txt"
del "%TMP%\foo.txt"
del "%TMP%\updateiconswin.exe"

pause