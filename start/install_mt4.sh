#!/bin/bash

installer="/config/.wine/drive_c/mt4.exe"

winecfg -v=win10
curl -o "$installer" "https://download.mql5.com/cdn/web/metaquotes.software.corp/mt4/mt4oldsetup.exe"
exec wine "$installer" /auto & wait
rm -f "$installer"
