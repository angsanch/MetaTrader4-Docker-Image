#!/bin/bash

mt4exe='/config/.wine/drive_c/Program Files (x86)/MetaTrader 4/terminal.exe'

if [ ! -e "$mt4exe" ]; then
	bash /start/install_mt4.sh
fi

if [ -e "$mt4exe" ]; then
	echo "MT4 is installed"
	wine "$mt4exe"
else
	echo "File {$mt4exe} does not exist. Installation error. MT4 can't run."
fi
