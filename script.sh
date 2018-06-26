#!/bin/bash
 
echo "Creating Wine config at ~/.wine"
rm -Rf ~/.wine
WINEPREFIX=~/.wine WINEARCH=win32 wine winecfg

echo "Copying important files from Desktop/VS98/OS/SYSTEM"
cp -Rf ~/Desktop/VS98/OS/SYSTEM/* ~/.wine/drive_c/windows/system32/

echo "Registering important DLL files! *CRITICAL STEP*"
wine regsvr32 ~/.wine/drive_c/windows/system32/comcat.dll
wine regsvr32 ~/.wine/drive_c/windows/system32/MSSTDFMT.DLL

echo "Copying Visual Basic 6.0 from Desktop/VS98/VB98"
mkdir ~/.wine/drive_c/Program\ Files/VB98
cp -R ~/Desktop/VS98/VB98/* ~/.wine/drive_c/Program\ Files/VB98

echo "Making a shortcut on the desktop"
ln -s ~/.wine/drive_c/Program\ Files/VB98/VB6.EXE ~/Desktop/Visual\ Basic\ 6

echo Done!
