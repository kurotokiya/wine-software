#!/bin/bash

sudo add-apt-repository ppa:ubuntu-wine/ppa
sudo apt-get update
sudo apt-get install wine1.7 -y

WINEARCH=win32 winecfg
winetricks dotnet20

wget http://file.tokiya.me/osu.zip
unzip osu.zip

cd 'osu!'
wine 'osu!.exe'
