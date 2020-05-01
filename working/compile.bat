@echo off

cd\
cd C:\Users\Public\Quake_Level_Editor\quake-leveldesign-starterkit-master\working


echo Copying Files...
copy C:\Users\Public\Quake_Level_Editor\quake-leveldesign-starterkit-master\id1\maps\floorbyfloor.map C:\Users\Public\Quake_Level_Editor\quake-leveldesign-starterkit-master\working


echo Converting map...


echo --------------QBSP--------------
C:\Users\Public\Quake_Level_Editor\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\qbsp.exe floorbyfloor

echo -------------LIGHT--------------
C:\Users\Public\Quake_Level_Editor\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\light.exe floorbyfloor

copy floorbyfloor.bsp C:\Users\Public\Quake_Level_Editor\quake-leveldesign-starterkit-master\id1\maps
copy floorbyfloor.pts C:\Users\Public\Quake_Level_Editor\quake-leveldesign-starterkit-master\id1\maps
copy floorbyfloor.lit C:\Users\Public\Quake_Level_Editor\quake-leveldesign-starterkit-master\id1\maps
pause
cd\
cd C:\Users\Public\Quake_Level_Editor\quake-leveldesign-starterkit-master
quakespasm  +map floorbyfloor
